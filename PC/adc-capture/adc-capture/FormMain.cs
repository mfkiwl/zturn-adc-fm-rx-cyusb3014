﻿using MathNet.Numerics;
using MathNet.Numerics.IntegralTransforms;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net.Sockets;
using System.Numerics;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;

namespace adc_capture
{
    public partial class FormMain : Form
    {
        public FormMain()
        {
            InitializeComponent();
        }

        public static int SERVER_PORT = 12345;
        public static string SERVER_ADR = "192.168.56.101";

        private UInt32 read_uint(byte[] buf, UInt32 offset)
        {
            UInt32 ret = 0;
            ret += buf[offset];
            ret += ((UInt32)buf[offset + 1]) << 8;
            ret += ((UInt32)buf[offset + 2]) << 16;
            ret += ((UInt32)buf[offset + 3]) << 24;
            return ret;
        }

        static UInt32 MB = 1024 * 1024;
        static UInt32 KB = 1024;
        private NetworkStream ns = null;
        private TcpClient tcp = null;

        private void open_connection()
        {
            string ip = textBox_IP.Text;
            if (ip != null)
                tcp = new TcpClient(ip, SERVER_PORT);
            else
                tcp = new TcpClient(SERVER_ADR, SERVER_PORT);
            ns = tcp.GetStream();
        }

        private int set_capture_size()
        {
            UInt32 sz = (radioButton_MB.Checked ? MB : 
                          (radioButton_KB.Checked ? KB : KB));
            int size = (int)(numericUpDown_size.Value * sz);
            if (tcp == null)
                open_connection();

            byte[] lenstr = System.Text.Encoding.ASCII.GetBytes(size.ToString("X8"));   // send how many bytes to receive
            ns.Write(lenstr, 0, lenstr.Length);
            return size;
        }

        private void get_raw_values(byte[] buf)
        {
            int size = buf.Length;

            Stopwatch sw = Stopwatch.StartNew();
            int total = 0;
            while (total < size)
            {
                total += ns.Read(buf, total, size - total);
            }
            sw.Stop();
            //                MessageBox.Show(sw.ElapsedMilliseconds + "[ms]");
        }

        int[] decode_values(byte[] buf, int len)
        {
            int i, j;
            int[] data = new int[len + 4];  // allocate more

            // decode raw data to integer values
            for (i = 0, j = 0; i < len; i += 5, j++)
            {
                uint b0 = buf[j * 8 + 0];
                uint b1 = buf[j * 8 + 1];
                uint b2 = buf[j * 8 + 2];
                uint b3 = buf[j * 8 + 3];
                uint b4 = buf[j * 8 + 4];
                uint b5 = buf[j * 8 + 5];
                uint b6 = buf[j * 8 + 6];
                uint b7 = buf[j * 8 + 7];
                data[i] = (int)(b0 | ((b1 & 0xF) << 8));
                data[i + 1] = (int)(((b1 & 0xF0u) >> 4) | (b2 << 4));
                data[i + 2] = (int)(b3 | ((b4 & 0xF) << 8));
                data[i + 3] = (int)(((b4 & 0xF0u) >> 4) | (b5 << 4));
                data[i + 4] = (int)(b6 | ((b7 & 0xF) << 8));
            }

            if (radioButton_signed.Checked)
                for (i = 0; i < len; i++)
                {
                    if ((data[i] & 0x800) != 0)
                    {    // negative
                        data[i] = data[i] - 0x1000;
                    }
                }
            else if (radioButton_offset.Checked) {
                for (i = 0; i < len; i++)
                    data[i] -= (1 << (ADC_WIDTH-1));
            }
            return data;
        }

        int[] decode_32bit_values(byte[] buf, int len)
        {
            int i;
            int[] data = new int[len];

            for (i = 0; i < len; i++)
            {
                data[i] = BitConverter.ToInt32(buf, i*8);
            }
            return data;
        }

        void init_chart(float freq)
        {
            BeginInvoke((Action)(() =>
            {
                chart.ChartAreas["data"].CursorX.IsUserEnabled = true;
                chart.ChartAreas["data"].CursorX.IsUserSelectionEnabled = true;
                chart.ChartAreas["data"].AxisX.ScaleView.Zoomable = true;
                chart.ChartAreas["data"].AxisX.ScrollBar.IsPositionedInside = true;

                chart.ChartAreas["FFT"].AxisY.Title = "[dB]";
                chart.ChartAreas["FFT"].AxisX.Title = "MHz";
                chart.ChartAreas["FFT"].CursorX.IsUserEnabled = true;
                chart.ChartAreas["FFT"].CursorX.IsUserSelectionEnabled = true;
                chart.ChartAreas["FFT"].AxisX.ScaleView.Zoomable = true;
                chart.ChartAreas["FFT"].AxisX.ScrollBar.IsPositionedInside = true;
                chart.ChartAreas["FFT"].AxisX.Minimum = 0.0;
                chart.ChartAreas["FFT"].AxisX.Maximum = freq / 2.0;
                //                    chart.ChartAreas["FFT"].AxisX.Interval = 0.25; // 0=Auto
                chart.ChartAreas["FFT"].AxisX.Interval = 0;
                chart.ChartAreas["FFT"].AxisX.IntervalAutoMode = IntervalAutoMode.VariableCount;
            }));
        }

        private bool running = false;
        private static int FFT_POINTS = 8192*2;
        private static float SAMPLE_FREQ = 40.0f;
        private static int ADC_WIDTH = 12;

        private void draw_chart(int[] data, Complex[] data2, float sample_freq)
        {
            chart.Invoke(new Action(() =>
            {
                chart.Series.Clear();

                Series dat = new Series();
                dat.ChartType = SeriesChartType.Line;
                dat.Color = Color.Aqua;
                dat.BorderWidth = 1;
                dat.LegendText = "data";
                chart.ChartAreas["data"].RecalculateAxesScale();

                for (int i = 1024; i < 1024 + 1024; i++)
                {
                    dat.Points.AddXY(i, data[i]);
                }
                dat.ChartArea = "data";
                chart.Series.Add(dat);

                dat = new Series();
                dat.ChartType = SeriesChartType.Line;
                dat.Color = Color.Green;
                dat.BorderWidth = 1;
                dat.LegendText = "FFT";
                float s = sample_freq / (float)data.Length;
                for (int i = 0; i < data.Length / 2; i++)
                {
                    double val = Complex.Abs(data2[i]);
                    dat.Points.AddXY((float)i * s, 20.0 * Math.Log10(val * 0.54));
                }
                dat.ChartArea = "FFT";
                chart.Series.Add(dat);
            }));
        }

        private void capture_and_display()
        {
            int size = set_capture_size();
            byte[] buf = new byte[size];
            int[] data;
            Complex[] data2 = new Complex[FFT_POINTS];
            var window = Window.Hamming(FFT_POINTS);
            float fs = (float)Convert.ToDouble(textBox_fs.Text);
            init_chart(fs);

            while (running)
            {
                get_raw_values(buf);

                if (radioButton_raw.Checked)
                {
                    data = decode_values(buf, FFT_POINTS);
                    for (int i = 0; i < FFT_POINTS; i++)
                    {       // normalize ADC value to [-1,1]
                        data2[i] = new Complex(data[i] / (float)(1 << (ADC_WIDTH - 1)) * (float)window[i], 0.0f);
                    }
                }
                else
                { 
                    data = decode_32bit_values(buf, FFT_POINTS);
                    for (int i = 0; i < FFT_POINTS; i++)
                    {
                        data2[i] = new Complex(data[i] / (float)(0x7FFFFFFF) * (float)window[i], 0.0f);
                    }
                }

                Fourier.Radix2Forward(data2, FourierOptions.Default);

                draw_chart(data, data2, fs);
            }
        }

        private void button_capture_Click(object sender, EventArgs e)
        {
            if (!running)
            {
                running = true;
                button_capture.Text = "Stop";
                Task.Factory.StartNew(() =>
                {
                    capture_and_display();
                });
            }else{
                running = false;
                button_capture.Text = "Capture";
            }
        }

        private void FormMain_Load(object sender, EventArgs e)
        {
            chart.ChartAreas.Add(new ChartArea("data"));
            chart.ChartAreas.Add(new ChartArea("FFT"));
            init_chart(SAMPLE_FREQ);
        }

        private void FormMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            running = false;
            if (ns != null)
                ns.Close();
            if (tcp != null)
                tcp.Close();
        }

        private void button_capture_single_Click(object sender, EventArgs e)
        {
            int size = set_capture_size();
            byte[] buf = new byte[size];
            get_raw_values(buf);
            SaveFileDialog dlg = new SaveFileDialog();
            if (DialogResult.OK == dlg.ShowDialog())
            {
                if (checkBox_decode.Checked)
                {
                    int[] vals = decode_values(buf, size / 8 * 5);
                    using (BinaryWriter writer = new BinaryWriter(File.OpenWrite(dlg.FileName)))
                    {
                        for (var i = 0; i < vals.Length; i++)
                        {
                            writer.Write((UInt16)vals[i]);
                        }
                    }
                    MessageBox.Show("written " + vals.Length.ToString() + " values");
                }
                else
                {
                    using (BinaryWriter writer = new BinaryWriter(File.OpenWrite(dlg.FileName)))
                    {
                        writer.Write(buf);
                    }
                    MessageBox.Show("written " + buf.Length.ToString() + " bytes");
                }
            }
        }

        private void button_tune_freq_Click(object sender, EventArgs e)
        {
            double freq = Convert.ToDouble(textBox_tune_freq.Text);
            int quot = (int)(freq / SAMPLE_FREQ);
            freq -= quot * SAMPLE_FREQ;
            if (freq > SAMPLE_FREQ / 2.0f)
            {
                freq = SAMPLE_FREQ - freq;   // alias
            }

            if (tcp == null)
                open_connection();

            byte[] str = System.Text.Encoding.ASCII.GetBytes("F"+freq.ToString("00.0"));   // send how many bytes to receive
            ns.Write(str, 0, str.Length);
        }

        private void button_fft_Click(object sender, EventArgs e)
        {
            const int points = 8192;

            string line;
            int i;
            int[] data = new int[points];
            Complex[] data2 = new Complex[points];
            var window = Window.Hamming(points);
            float fs = (float)Convert.ToDouble(textBox_fs.Text);
            init_chart(fs);

            OpenFileDialog dlg = new OpenFileDialog();
            if (DialogResult.OK == dlg.ShowDialog())
            {
                using (StreamReader sr = new StreamReader(dlg.FileName))
                {
                    for (i = 0; i < points; i++) {
                        line = sr.ReadLine();
                        if (line == null)
                            break;
                        data[i] = int.Parse(line, NumberStyles.HexNumber);  // hex string 32bit signed int
                        data2[i] = new Complex(data[i] / (double)(0x80000000L) * window[i], 0.0f);
                    }
                    Fourier.Radix2Forward(data2, FourierOptions.Default);

                    draw_chart(data, data2, fs);
                }
            }
        }
    }
}

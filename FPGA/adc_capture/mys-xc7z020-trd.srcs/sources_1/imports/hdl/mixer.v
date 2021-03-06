
module mixer
	#(
		parameter RESET_CNT			=	400,
		parameter SINUSOIDAL_WIDTH	=	13,		// 1Q11
		parameter DATA_WIDTH		=	12,
		parameter OUTPUT_WIDTH		=	17,
		parameter BIT_SHIFT			=	6	
	)
(
	input								clk,
	output[31:0]						bram_adr,
	input[31:0]							bram_data,
	input signed[DATA_WIDTH-1:0]		data,
	output signed[OUTPUT_WIDTH-1:0]		i_out,
	output signed[OUTPUT_WIDTH-1:0]		q_out
);

reg[31:0]										r_cnt = 32'b0;
wire signed [SINUSOIDAL_WIDTH-1:0]				w_sin, w_cos;
reg signed [SINUSOIDAL_WIDTH+DATA_WIDTH-1:0]	r_i, r_q;
reg signed [OUTPUT_WIDTH-1:0]					r_i_out, r_q_out;

	assign	bram_adr	=	r_cnt;
	assign	w_sin		=	bram_data[SINUSOIDAL_WIDTH+16-1:16];	// b16 and upper
	assign	w_cos		=	bram_data[SINUSOIDAL_WIDTH-1:0];		// b0 and upper

	assign	i_out		=	r_i_out;
	assign	q_out		=	r_q_out;

	always @(posedge clk) begin
		if (r_cnt >= RESET_CNT-1)
			r_cnt	<=	32'd0;
		else
			r_cnt	<=	r_cnt + 32'd1;

		r_i		<=	data * w_sin;
		r_q		<=	data * w_cos;

		if (r_i[SINUSOIDAL_WIDTH+DATA_WIDTH-1] == 1'b1 &&
			r_i[SINUSOIDAL_WIDTH+DATA_WIDTH-2:SINUSOIDAL_WIDTH+DATA_WIDTH-BIT_SHIFT] != 
					{(BIT_SHIFT-1){1'b1}})
			r_i_out	<=	{1'b1, {(OUTPUT_WIDTH-1){1'b0}}};
		else if (r_i[SINUSOIDAL_WIDTH+DATA_WIDTH-1] == 1'b0 &&
			r_i[SINUSOIDAL_WIDTH+DATA_WIDTH-2:SINUSOIDAL_WIDTH+DATA_WIDTH-BIT_SHIFT] != 
					{(BIT_SHIFT-1){1'b0}})
			r_i_out	<=	{1'b0, {(OUTPUT_WIDTH-1){1'b1}}};
		else
			r_i_out	<=	r_i[SINUSOIDAL_WIDTH+DATA_WIDTH-BIT_SHIFT:SINUSOIDAL_WIDTH+DATA_WIDTH-BIT_SHIFT-OUTPUT_WIDTH+1];

		if (r_q[SINUSOIDAL_WIDTH+DATA_WIDTH-1] == 1'b1 &&
			r_q[SINUSOIDAL_WIDTH+DATA_WIDTH-2:SINUSOIDAL_WIDTH+DATA_WIDTH-BIT_SHIFT] != 
					{(BIT_SHIFT-1){1'b1}})
			r_q_out	<=	{1'b1, {(OUTPUT_WIDTH-1){1'b0}}};
		else if (r_q[SINUSOIDAL_WIDTH+DATA_WIDTH-1] == 1'b0 &&
			r_q[SINUSOIDAL_WIDTH+DATA_WIDTH-2:SINUSOIDAL_WIDTH+DATA_WIDTH-BIT_SHIFT] != 
					{(BIT_SHIFT-1){1'b0}})
			r_q_out	<=	{1'b0, {(OUTPUT_WIDTH-1){1'b1}}};
		else
			r_q_out	<=	r_q[SINUSOIDAL_WIDTH+DATA_WIDTH-BIT_SHIFT:SINUSOIDAL_WIDTH+DATA_WIDTH-BIT_SHIFT-OUTPUT_WIDTH+1];
	end

   initial begin
	  r_i		<=		0;
	  r_q		<=		0;
	  r_i_out	<=		0;
	  r_q_out	<=		0;
   end

endmodule

module frequency_convert(
	i_clk,
	i_period,
	o_clk,
);
input i_clk;
input [31:0] i_period;
output o_clk;

reg o_clk;
reg [31:0] count;
//
//always @ (posedge i_clk) begin
//	count <= count + 1;
//	if (count == ((i_period >> 1) - 1)) 
//		o_clk <= 1;
//	else if (count == i_period - 1) begin
//		o_clk <= 0;
//		count <= 0;
//	end
//
//end

always @ (posedge i_clk) begin
	count <= count + 1'b1;
	if (count == (i_period >> 1) - 1) begin
		o_clk <= ~o_clk;
		count <= 32'b0;
	end
end
endmodule 

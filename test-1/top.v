module top(
	input sys_clk,
	output [5:0] led,
);
	always @(posedge sys_clk) begin
		led[5:0] <= 6'b000000;
	end
endmodule

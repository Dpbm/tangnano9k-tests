module top(
	input sys_clk,
	output led,
);

	localparam TIME = 3000000;
	reg [23:0] counter = 0;
	reg led_status = 1'b0;

	always @(posedge sys_clk) begin
		counter <= counter + 1;
		if(counter == TIME) begin
			counter <= 0;
			led_status <= ~led_status;
		end
	end

	assign led = led_status;
endmodule

`timescale 1ns / 1ps

module accel(
	input CPU_SPEED_SWITCH,
	input C14M,
	input AS_CPU_n,
	input RAM_ACCESS,
	output reg FAST_DTACK_n = 1'b1
);



always @(posedge C14M or posedge AS_CPU_n) begin
	
	if (AS_CPU_n) begin

		FAST_DTACK_n <= 1'b1;

	end else begin

		if (!CPU_SPEED_SWITCH && RAM_ACCESS) begin

			FAST_DTACK_n <= 1'b0;

		end
	end

end

endmodule

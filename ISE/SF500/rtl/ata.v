`timescale 1ns / 1ps

module ata(
	input [23:16] A,
	input RW_n,
	input AS_CPU_n,
	input [7:0] BASE_IDE,
	input IDE_CONFIGURED_n,
	output ROM_OE_n
);

wire rom_read_access = !IDE_CONFIGURED_n && (A[23:16] == BASE_IDE[7:0]) && RW_n && !AS_CPU_n;
assign ROM_OE_n = ~rom_read_access;

endmodule

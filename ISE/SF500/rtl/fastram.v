`timescale 1ns / 1ps

module fastram(
	input [23:21] A,
	input JP2,
	input RW_n,
	input UDS_n,
	input LDS_n,
	input AS_CPU_n,
	input DS_n,
	input [7:5] BASE_RAM,
	input RAM_CONFIGURED_n,
	output OE_BANK0_n,
	output OE_BANK1_n,
	output WE_BANK0_ODD_n,
	output WE_BANK1_ODD_n,
	output WE_BANK0_EVEN_n,
	output WE_BANK1_EVEN_n,
	output RAM_ACCESS
);


/*
Amiga memory map Z2-space:

	A	23	22	21
20000		 0	 0	 1	// 2MB
40000		 0	 1	 0	// 2MB
60000		 0	 1	 1	// 2MB
80000		 1	 0	 0	// 2MB
*/

wire first_4MB_access  = !AS_CPU_n && !RAM_CONFIGURED_n && ( (A == BASE_RAM) || (A == (BASE_RAM + 3'b001)) );
wire second_4MB_access = !AS_CPU_n && !RAM_CONFIGURED_n && JP2 && ( (A == (BASE_RAM + 3'b010)) || (A == (BASE_RAM + 3'b011)) );

assign RAM_ACCESS = JP2 ? (first_4MB_access || second_4MB_access) : first_4MB_access;

assign OE_BANK0_n = first_4MB_access && RW_n && !DS_n ? 1'b0 : 1'b1;
assign OE_BANK1_n = second_4MB_access && RW_n && !DS_n ? 1'b0 : 1'b1;

assign WE_BANK0_ODD_n = first_4MB_access && !RW_n && !LDS_n ? 1'b0 : 1'b1;
assign WE_BANK1_ODD_n = second_4MB_access && !RW_n && !LDS_n ? 1'b0 : 1'b1;

assign WE_BANK0_EVEN_n = first_4MB_access && !RW_n && !UDS_n ? 1'b0 : 1'b1;
assign WE_BANK1_EVEN_n = second_4MB_access && !RW_n && !UDS_n ? 1'b0 : 1'b1;

endmodule

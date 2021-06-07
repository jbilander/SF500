`timescale 1ns / 1ps

module ata(
	input C14M,
	input RESET_n,
	input [23:12] A,
	input RW_n,
	input AS_CPU_n,
	input [7:0] BASE_IDE,
	input IDE_CONFIGURED_n,
	output reg ROM_OE_n = 1'b1,
	output reg IDE_IOR_n = 1'b1,
	output reg IDE_IOW_n = 1'b1,
	output [1:0] IDE_CS_n,
	output IDE_ACCESS
);

reg ide_enable_n = 1'b1; //Keeps track read from ROM or IDE.

wire ide_or_rom_access = !IDE_CONFIGURED_n && (A[23:16] == BASE_IDE[7:0]) && !AS_CPU_n;
assign IDE_ACCESS = !ide_enable_n && ide_or_rom_access;
assign IDE_CS_n[0] = ~A[12];
assign IDE_CS_n[1] = ~A[13];

/*
IDE A0-A2 are mapped on PCB like below, hence no mapping done via CPLD.
IDE_A0	<= A[9];
IDE_A1	<= A[10];
IDE_A2	<= A[11];
*/

always @(negedge RESET_n or posedge C14M) begin

	if (!RESET_n) begin
	
		IDE_IOW_n <= 1'b1;
		IDE_IOR_n <= 1'b1;
		ROM_OE_n <= 1'b1;
		ide_enable_n <= 1'b1;
		
	end else if (ide_or_rom_access) begin 
		
		if (RW_n) begin	//Read
		
			IDE_IOW_n <= 1'b1;
			IDE_IOR_n <= ide_enable_n;
			ROM_OE_n	 <= ~ide_enable_n;
		
		end else begin	//Write
		
			ide_enable_n <= 1'b0;
			IDE_IOW_n <= 1'b0;
			IDE_IOR_n <= 1'b1;
			ROM_OE_n	 <= 1'b1;
			
		end
		
	end else begin
	
		IDE_IOW_n <= 1'b1;
		IDE_IOR_n <= 1'b1;
		ROM_OE_n	 <= 1'b1;
		
	end

end

endmodule

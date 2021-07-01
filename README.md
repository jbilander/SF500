# SF500
Spitfire 500, A low-end 14 MHz Accelerator with IDE and 4/8 MB fast RAM for the Amiga 500.
***
THIS IS WORK IN PROGRESS!!!

KiCad files not added yet and won't be until Rev. 1B is verified working.

***
Heavily inspired by Matthias Heinrichs' CDTV-RAM-IDE board. Many thanks to Matze for sharing his work and letting me open source this project.

https://gitlab.com/MHeinrichs/CDTV-RAM-IDE/

Please note, if you are going to build boards and sell for profit, you will need a consent from Matthias and also from Oliver Kastl if you are going to bundle this software http://aminet.net/package/disk/misc/oktapus with the hardware (ROM-chip).
***

Video:
https://drive.google.com/file/d/1c2K9_kcEqxMMBJBd1aELfbt1fV5XXoU6/view?usp=sharing

***

<a href="images/SF500_rev1b_pic1.jpg">
<img src="images/SF500_rev1b_pic1.jpg" width="336" height="420">
</a>
<a href="images/SF500_rev1b_pic2.jpg">
<img src="images/SF500_rev1b_pic2.jpg" width="336" height="420">
</a>
<br />
<a href="images/SF500_rev1a_pic3.jpg">
<img src="images/SF500_rev1a_pic3.jpg" width="256" height="192">
</a>
<a href="images/SF500_rev1a_pic4.jpg">
<img src="images/SF500_rev1a_pic4.jpg" width="256" height="192">
</a>
<a href="images/SF500_rev1a_pic5.jpg">
<img src="images/SF500_rev1a_pic5.jpg" width="256" height="192">
</a>


BOM Rev. 1B
---------
Position  | Name/Value   | Package | Notes
-|-|-|-|
U1 | 64Pcs socket pins for Round Plug 0.5mm Diameter | 100Pcs | IC Leads Receptacle, gold or nickel plated, used as TH Pin Header. https://www.aliexpress.com/item/1005002830101899.html
U2 | CPU Socket, 2 x 32 Female Pin Header 2.54mm pitch | 2 x Single Row 40Pin | Round Female Pin Header gold or nickel plated machined pins.
U3 | Voltage Regulator 3.3V, LM1117-3.3 or AMS1117-3.3 | SOT-223 | 3.3V 1A Low Drop-Out (LDO) Voltage regulator.
U4 | NB3N502 - 14 MHz to 190 MHz PLL Clock Multiplier | SOIC-8 | PLL with CLKOUT and at the same time output the input aligned reference clock signal (REF).
U5-U6 | 2 x CY62167G-45ZXI | 48-pin TSOP-I configurable as 1M × 16 or 2M × 8 SRAM |  First 4 MB. Cost €4,18 / Pcs if bought with No Warranty. https://www.digikey.se/product-detail/en/cypress-semiconductor-corp/CY62167G-45ZXI/2015-CY62167G-45ZXI-ND/9771526
U7-U8 | 2 x CY62167G-45ZXI | | (Optional) Second 4 MB.
U9 | XC95144XL-TQ100 | TQFP-100_14x14mm_P0.5mm | IC Xilinx CPLD 144MC 10NS 100TQFP, XC95144XL-10TQG100C
U10 | 29F040 or 29F010 | PLCC-32_11.4x14.0mm_P1.27mm | e.g. AM29F040B-70JC or AS29CF010-55CCIN
U11 | 74HCT2G14 | TSOP-6 | Dual inverting Schmitt trigger
R1 | 10k | 1206 | /VPA Pull-up resistor
R2 | 10k | 1206 | JP2 Pull-up resistor (P74)
R3 | 1k | 1206 | /CFGIN Pull-down resistor (P70)
R4 | 33 Ohm or 0 Ohm | 1206 | (Optional) /CFGOUT series resistor (P68)
R5 | 10k | 1206 | JP3 Pull-up resistor (Line A15 ROM)
R6 | 4.7k | 1206 | IDE_IORDY Pull-up resistor (P12)
R7 | 1k | 1206 | IDE_IRQ Pull-down resistor (P27)
R8 | 4.7k | 1206 | /AS_CPU Pull-up resistor (P79)
R9 | 1k | 1206 | /DTACK_CPU Pull-up resistor (P13)
R10 | 4.7k or 10k | 0805 | (Optional) TMS Pull-up resistor (P47)
R11 | 4.7k or 10k | 0805 | (Optional) TDI Pull-up resistor (P45)
R12 | 4.7k or 10k | 0805 | (Optional) TCK Pull-up resistor (P48)
R13 | 10k | 0805 | SW1 Pull-up resistor debounce circuit (P76)
R14 | 10k | 0805 | resistor in (RC) debounce circuit
R15 | 10k | 1206 | JP4 Pull-up (P67)
R16 | 4.7k or 10k | 0805 | (Optional) CFGIN Pull-up (P70)
C1 | 10uF | 1206 | capacitor for Voltage regulator
C2 | 10uF | 1206 | capacitor for Voltage regulator
C3 | 0.1uF = 100nF | 0805 | capacitor for Voltage regulator
C4 | 0.1uF = 100nF | 0805 | decoupling capacitor for U4 (PLL)
C5-C6 | 0.1uF = 100nF | 0805 | decoupling capacitors for U5-U6 (first 2 x SRAM)
C7-C8 | 0.1uF = 100nF | 0805 | decoupling capacitors for U7-U8 (if populated, second 2 x SRAM)
C9-C12 | 0.1uF = 100nF | 0805 | decoupling capacitors for U9 (CPLD)
C13 | 10uF | 1206 | capacitor for VCC-pin
C14 | 10uF | 1206 | capacitor for IDE VCC-pin
C15 | 0.1uF = 100nF | 0805 | decoupling capacitor for U10 (ROM)
C16 | 0.1uF = 100nF | 0805 | capacitor in (RC) debounce circuit (SW1)
C17 | 0.1uF = 100nF | 0805 | decoupling capacitor for U11 (Schmitt trigger inverter)
J1 | JTAG Pin Header 2.54mm pitch | Single row 6pin | (Optional) Pressing JTAG-header pins against holes while programming is enough.
J2 | External Pin Header 2.54mm pitch | Single row 5pin angled or straight | 2.54mm Jumper on CFGIN-pin needed for enable Autoconfig unless daisy chained.
SW1 (J3) | 3Pin Header 2.54mm pitch | Single row 3pin | Pin header with jumper select 7/14MHz or On-Off mini slide switch SS12D00 3pin 1P2T 2 Position toggle switch. Handle length: 3mm-6mm
J4 | 2.0mm Pitch Right Angle IDE-socket | Double Row (2 x 22) Female 44pin header socket | 2 x 25 or 2 x 40, pull pin 45, 46 using a plier and cut with a hacksaw = Pin header 2 x 22. https://www.aliexpress.com/item/4001286548060.html

<br />
<br />


[![CC BY-SA 4.0][cc-by-sa-shield]][cc-by-sa]

This work is licensed under a
[Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa].

[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg

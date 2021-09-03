# SF500
Spitfire 500, A low-end 14 MHz Accelerator with IDE and 4/8 MB fast RAM for the Amiga 500.
***
Heavily inspired by Matthias Heinrichs' CDTV-RAM-IDE board. Many thanks to Matze for sharing his work and letting me open source this project.

https://gitlab.com/MHeinrichs/CDTV-RAM-IDE/

Please note, if you are going to build boards and sell for profit, you will need a consent from Matthias and also from Oliver Kastl if you are going to bundle this software http://aminet.net/package/disk/misc/oktapus with the hardware (ROM-chip).

***

<a href="images/SF500_rev1b_pic1.jpg">
<img src="images/SF500_rev1b_pic1.jpg" width="300" height="390">
</a>
<a href="images/SF500_rev1b_pic2.jpg">
<img src="images/SF500_rev1b_pic2.jpg" width="300" height="390">
</a>

    Board is four layers:
    
    signal (with 3V3-zone)
    power plane (GND)
    power plane (VCC)
    signal


***

Rev. 1B installed in an A500. The 7/14 MHz switch can be easily accessed if hanging out the sidecar port opening of the A500 case. This switch can also be switched while the machine is running.

***

<a href="images/SF500_rev1b_pic3.jpg">
<img src="images/SF500_rev1b_pic3.jpg" width="308" height="231">
</a>
<a href="images/SF500_rev1b_pic4.jpg">
<img src="images/SF500_rev1b_pic4.jpg" width="308" height="231">
</a>

***

Videos: <br /><br />
https://drive.google.com/file/d/1c2K9_kcEqxMMBJBd1aELfbt1fV5XXoU6/view?usp=sharing

SysInfo tests running _oktagon.device_ on WB 1.3 on KS 1.3: <br />
https://drive.google.com/file/d/1rewl8bivpIMPoLze_-Y7_mGYqzTiX6ET/view?usp=sharing

Cold boot running _oktagon.device_ and WB 1.3 on KS 1.3: <br />
https://drive.google.com/file/d/1MFdxnaCo8lNMqMQ6eJMtNUMSsBB8mtb-/view?usp=sharing

Cold boot running _scsi.device v109.3_  (oktapussy) and ClassicWB 3.1 (with 1.3 theme) on KS 3.1: <br />
https://drive.google.com/file/d/1IrmWWG6SJgc65BBj8jGnHebKbp6LAcYa/view?usp=sharing

***

The CPU and the speed-select switch clears the A500 keyboard nicely when installed. Also the CF- or SD-card adapter clears the ROM-chip nicely.

***

<a href="images/SF500_rev1b_pic5.jpg">
<img src="images/SF500_rev1b_pic5.jpg" width="308" height="231">
</a>
<a href="images/SF500_rev1b_pic6.jpg">
<img src="images/SF500_rev1b_pic6.jpg" width="308" height="231">
</a>

***

### Performance

14 MHz and JP3 Open (scsi.device v109.3):

<a href="images/SF500_rev1b_pic7.jpg">
<img src="images/SF500_rev1b_pic7.jpg" width="256" height="192">
</a>
<a href="images/SF500_rev1b_pic9.jpg">
<img src="images/SF500_rev1b_pic9.jpg" width="256" height="192">
</a>

<br />
<br />

14 MHz and JP3 Closed (oktagon.device v6.10):

<a href="images/SF500_rev1b_pic8.jpg">
<img src="images/SF500_rev1b_pic8.jpg" width="256" height="192">
</a>
<a href="images/SF500_rev1b_pic10.jpg">
<img src="images/SF500_rev1b_pic10.jpg" width="256" height="192">
</a>

***

Keep in mind Kickstart 1.3 does not have FFS (Fast File System) in ROM, 
so in order to use FFS with 1.3 make a small boot-partition (e.g. ~200 MB) and format it DOS\1, 
not International (DOS\3) or DirCache (DOS\5), and not OFS (DOS\0). For KS 3.1 I would format it FFS International (DOS\3) or perhaps use PFS3. <br /><br />
https://en.wikipedia.org/wiki/Amiga_Fast_File_System <br />

Also, do not forget to set the MaxTransfer to _0x1fe00_ and hit Enter button after typing, then save the setting. This applies to all versions except the new KS 3.2

<a href="images/SF500_rev1b_pic11.jpg">
<img src="images/SF500_rev1b_pic11.jpg" width="320" height="189">
</a>
<a href="images/SF500_rev1b_pic12.jpg">
<img src="images/SF500_rev1b_pic12.jpg" width="264" height="201">
</a>
<br />
<br />
Disk's partition and filesystem information should now be stored in the RDB (Rigid Disk Block)
for autoboot to work under WB 1.3 with oktagon.device. 
To install WB 1.3: Copy all content of the WB 1.3 floppy to the newly formatted Drive.


***

### How to Build:

The ROM image to burn to the AM29F040B-70JC chip can be downloaded from here: <br />
https://gitlab.com/MHeinrichs/CDTV-RAM-IDE/-/blob/master/Prog/ATOKTACOMBINED.rom-512.bin

The 64 KB ROM under _Releases_ is a combined ROM I made with the instructions from the textfile [EPROM-Hack_english.txt](https://github.com/jbilander/SF500/blob/main/EPROM-Hack_english.txt) in this repo (also available in German).
It is 060-compatible too, not that it makes any different for this accelerator that uses a 68000 or 68010 CPU.

The last version of the Oktagon2008 from BSC is 6.12 - but still reports as 6.10. As far as I know, only the boot code has changed to be compatible with the 68060. The actual driver is still 6.10.

Remember to Program the chip BEFORE you solder it down to the PCB. Do not byteswap if you are using a TL866II-Plus or similar programmer on Windows/Intel-arch, these parts are 8-bit so there is no concept of byte swapping.

***

Soldering: Start with all the surface mounts and then TH. I usually start with the Voltage regulator and verify the 3V3. Then the CPLD and verify JTAG-connection, doing a boundary scan with ISE-Impact. No need to solder a pin header to the JTAG connector on the PCB, just hold the connector in position and press gently. It should also be possible to use a Raspberry Pi and the program _xc3sprog_. Optionally you can put 10k or 4.7k pull-ups on R10-R12 (TMS,TDI,TCK) if you have problems connecting to the CPLD, those are 3V3 pull-ups so shouldn't damage anything using GPIO from a RPi. VCC is +5V and can be supplied through a typical usb phone-charger or similar, check polarity BEFORE you plug it in.

***

<a href="images/SF500_rev1b_pic13.jpg">
<img src="images/SF500_rev1b_pic13.jpg" width="256" height="192">
</a>
<a href="images/SF500_rev1b_pic14.jpg">
<img src="images/SF500_rev1b_pic14.jpg" width="256" height="192">
</a>
<br />
<a href="images/SF500_rev1b_pic15.jpg">
<img src="images/SF500_rev1b_pic15.jpg" width="256" height="192">
</a>
<a href="images/SF500_rev1b_pic16.jpg">
<img src="images/SF500_rev1b_pic16.jpg" width="256" height="192">
</a>

***

Using some kapton tape can help to hold the chip in place while tacking it down to get everything aligned properly. For the ROM-chip I pre-tin the pads and then use hot air rework station to solder it in place.

***

<a href="images/SF500_rev1b_pic17.jpg">
<img src="images/SF500_rev1b_pic17.jpg" width="256" height="192">
</a>
<a href="images/SF500_rev1b_pic18.jpg">
<img src="images/SF500_rev1b_pic18.jpg" width="256" height="192">
</a>
<br />
<a href="images/SF500_rev1b_pic19.jpg">
<img src="images/SF500_rev1b_pic19.jpg" width="256" height="192">
</a>
<a href="images/SF500_rev1b_pic20.jpg">
<img src="images/SF500_rev1b_pic20.jpg" width="256" height="192">
</a>

***

When all the surface mount components are done it's time for the TH-pins. I use an old 68k CPU as a jig and a piece of pin strip on the other side to align the pins while soldering them in position. Press ontop the CPU somewhat at the same time when soldering for a great result.

***

<a href="images/SF500_rev1b_pic21.jpg">
<img src="images/SF500_rev1b_pic21.jpg" width="256" height="192">
</a>
<a href="images/SF500_rev1b_pic22.jpg">
<img src="images/SF500_rev1b_pic22.jpg" width="256" height="192">
</a>

***

I used a 1.2mm thick PCB as a spacer while soldering the 44-pin IDE connector in place. This because it'll clear the Kickstart ROM chip better if the connector and hence the adapter is positioned a little higher up. The 44-pinout on the PCB is deliberately flipped/designed so that you can plug the CF or SD-adapter directly to the angled-connector the "right" way, no ribbon cable and no buffering is used.

***

<a href="images/SF500_rev1b_pic23.jpg">
<img src="images/SF500_rev1b_pic23.jpg" width="256" height="192">
</a>
<a href="images/SF500_rev1b_pic24.jpg">
<img src="images/SF500_rev1b_pic24.jpg" width="256" height="192">
</a>
<br />
<a href="images/SF500_rev1b_pic25.jpg">
<img src="images/SF500_rev1b_pic25.jpg" width="256" height="192">
</a>
<a href="images/SF500_rev1b_pic26.jpg">
<img src="images/SF500_rev1b_pic26.jpg" width="256" height="192">
</a>

***

The final result. The mini-slide switch can optionally be soldered directly to the PCB if you prefer it that way. Only two pins are actually used, it's a normal two pin jumper with default pull-up, the third pin/hole is not connected and is only there to allow for soldering the mini-slide switch directly onto the PCB.

***

<a href="images/SF500_rev1b_pic27.jpg">
<img src="images/SF500_rev1b_pic27.jpg" width="512" height="384">
</a>

***

Programming can now be done either this way...

***

<a href="images/SF500_rev1b_pic28.jpg">
<img src="images/SF500_rev1b_pic28.jpg" width="256" height="192">
</a>
<a href="images/SF500_rev1b_pic29.jpg">
<img src="images/SF500_rev1b_pic29.jpg" width="256" height="192">
</a>
<br />
<a href="images/SF500_rev1b_pic30.jpg">
<img src="images/SF500_rev1b_pic30.jpg" width="256" height="192">
</a>
<a href="images/SF500_rev1b_pic31.jpg">
<img src="images/SF500_rev1b_pic31.jpg" width="256" height="192">
</a>

***

...or like in picture below...it requires the Amiga PSU to be turned ON to provide +5V to the Accelerator, do not connect any external +5V here:

***

<a href="images/SF500_rev1a_pic4.jpg">
<img src="images/SF500_rev1a_pic4.jpg" width="256" height="192">
</a>

***

Jumpers:

    /CFGIN = This jumper is to activate autoconfig (active low with 1k pull-down resistor R3). No jumper here means no RAM nor IDE will be autoconfigured. 
    SW1 = CPU speed toggle between 7 or 14 MHz, default 10k pull-up means 14 MHz
    JP2 = Selects between 4 or 8 MB fast ram autoconfig, 8 MB requires U7,U8 populated too.
    JP3 = Selects between IDE driver oktagon.device or scsi.device_v109.3 (oktapussy)
    JP4 = Selects between Autoboot or Not, jumper Closed means autoconfigure will not load the ROM-vector (the JP3-selected driver).

***

Synthesis Summary:

<a href="images/SF500_rev1b_synthesis_summary.jpg">
<img src="images/SF500_rev1b_synthesis_summary.jpg" width="512" height="384">
</a>

Zipped JED-file (_main_top.jed_) available under _Releases_


***

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
R10 | 4.7k or 10k | 0805 | (Optional) TMS 3.3V Pull-up resistor (P47)
R11 | 4.7k or 10k | 0805 | (Optional) TDI 3.3V Pull-up resistor (P45)
R12 | 4.7k or 10k | 0805 | (Optional) TCK 3.3V Pull-up resistor (P48)
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

***

Happy Hackin' 

***

[![CC BY-SA 4.0][cc-by-sa-shield]][cc-by-sa]

This work is licensed under a
[Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa].

[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg

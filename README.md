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

<br />
<br />


[![CC BY-SA 4.0][cc-by-sa-shield]][cc-by-sa]

This work is licensed under a
[Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa].

[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg

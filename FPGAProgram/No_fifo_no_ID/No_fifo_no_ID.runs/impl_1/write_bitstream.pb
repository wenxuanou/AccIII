
r
Command: %s
1870*	planAhead2=
)open_checkpoint async_245_fifo_routed.dcp2default:defaultZ12-2866h px� 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.017 . Memory (MB): peak = 207.156 ; gain = 0.0002default:defaulth px� 
�
scannot add Board Part %s available at %s as part %s specified in board_part file is either invalid or not available5*board26
"digilentinc.com:genesys2:part0:1.12default:default2a
MD:/DProgram/Xilinx/Vivado/2016.1/data/boards/board_files/genesys2/H/board.xml2default:default2$
xc7k325tffg900-22default:defaultZ49-26h px� 
�
scannot add Board Part %s available at %s as part %s specified in board_part file is either invalid or not available5*board22
digilentinc.com:zybo:part0:1.02default:default2_
KD:/DProgram/Xilinx/Vivado/2016.1/data/boards/board_files/zybo/B.3/board.xml2default:default2#
xc7z010clg400-12default:defaultZ49-26h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
392default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
12default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2016.12default:defaultZ1-479h px� 
V
Loading part %s157*device2#
xc7a15tftg256-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
Parsing XDC File [%s]
179*designutils2�
�D:/Yitian/OneDrive - ece.ucsb.edu/AccIII/FPGAProgram/No_fifo_no_ID/No_fifo_no_ID.runs/impl_1/.Xil/Vivado-11516-RETouch3-PC/dcp/async_245_fifo.xdc2default:defaultZ20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
�D:/Yitian/OneDrive - ece.ucsb.edu/AccIII/FPGAProgram/No_fifo_no_ID/No_fifo_no_ID.runs/impl_1/.Xil/Vivado-11516-RETouch3-PC/dcp/async_245_fifo.xdc2default:defaultZ20-178h px� 
?
Reading XDEF placement.
206*designutilsZ20-206h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
=
Reading XDEF routing.
207*designutilsZ20-207h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:002default:default2 
00:00:00.4142default:default2
459.8872default:default2
3.8872default:defaultZ17-268h px� 
�
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
0.0000002default:default2
0.0000002default:defaultZ20-1924h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:002default:default2 
00:00:00.4142default:default2
459.8872default:default2
3.8872default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2m
Y  A total of 31 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 31 instances
2default:defaultZ1-111h px� 
�
'Checkpoint was created with %s build %s378*project2+
Vivado v2016.1 (64-bit)2default:default2
15382592default:defaultZ1-604h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:042default:default2
00:00:052default:default2
459.8872default:default2
252.7302default:defaultZ17-268h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a15t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a15t2default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
Rule violation (%s) %s - %s
20*drc2
IOSR-12default:default2)
IOB set reset sharing2default:default2�
�IO io_data[4] connects to flops which have these SYS_RST/i_reg[7], SYS_RST/C1_reg[2][0] set/reset signals.  For optimal IOB flop packing there should be only one set/reset signal coming into the IOB.2default:defaultZ23-20h px� 
�
Rule violation (%s) %s - %s
20*drc2
IOSR-12default:default2)
IOB set reset sharing2default:default2�
�IO io_data[5] connects to flops which have these SYS_RST/i_reg[7], SYS_RST/C1_reg[2][0] set/reset signals.  For optimal IOB flop packing there should be only one set/reset signal coming into the IOB.2default:defaultZ23-20h px� 
�
Rule violation (%s) %s - %s
20*drc2
IOSR-12default:default2)
IOB set reset sharing2default:default2�
�IO io_data[6] connects to flops which have these SYS_RST/i_reg[7], SYS_RST/C1_reg[2][0] set/reset signals.  For optimal IOB flop packing there should be only one set/reset signal coming into the IOB.2default:defaultZ23-20h px� 
�
Rule violation (%s) %s - %s
20*drc2
IOSR-12default:default2)
IOB set reset sharing2default:default2�
�IO io_data[7] connects to flops which have these SYS_RST/i_reg[7], SYS_RST/C1_reg[2][0] set/reset signals.  For optimal IOB flop packing there should be only one set/reset signal coming into the IOB.2default:defaultZ23-20h px� 
f
DRC finished with %s
1905*	planAhead2(
0 Errors, 4 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
e
Writing bitstream %s...
11*	bitstream2(
./async_245_fifo.bit2default:defaultZ40-11h px� 
e
Writing bitstream %s...
11*	bitstream2(
./async_245_fifo.bin2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
s
QWebTalk data collection is enabled (User setting is ON. Install Setting is ON.).
118*projectZ1-118h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:152default:default2
00:00:132default:default2
832.2232default:default2
372.3362default:defaultZ17-268h px� 
k
Unable to parse hwdef file %s162*	vivadotcl2(
async_245_fifo.hwdef2default:defaultZ4-395h px� 


End Record
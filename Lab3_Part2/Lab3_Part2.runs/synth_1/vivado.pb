
|
Command: %s
53*	vivadotcl2K
7synth_design -top fir_filter_test -part xc7a35tcpg236-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
114202default:defaultZ8-7075h px� 
�
%s*synth2�
wStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1018.633 ; gain = 0.000
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2#
fir_filter_test2default:default2
 2default:default2�
�C:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.srcs/sources_1/imports/FIR_Filter_Implimentation/fir_filter_test.sv2default:default2
32default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
sig_gen2default:default2
 2default:default2�
C:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.srcs/sources_1/imports/FIR_Filter_Implimentation/sig_gen.sv2default:default2
232default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter W_SINE bound to: 16 - type: integer 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter W_PHASE bound to: 16 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter W_CORDIC_IN bound to: 24 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter W_CORDIC_OUT bound to: 24 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter MAX_POS bound to: 32767 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter MIN_NEG bound to: -32768 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
cordic_02default:default2
 2default:default2�
�C:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.runs/synth_1/.Xil/Vivado-21156-Nebuchadnezzar/realtime/cordic_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cordic_02default:default2
 2default:default2
12default:default2
12default:default2�
�C:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.runs/synth_1/.Xil/Vivado-21156-Nebuchadnezzar/realtime/cordic_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
sig_gen2default:default2
 2default:default2
22default:default2
12default:default2�
C:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.srcs/sources_1/imports/FIR_Filter_Implimentation/sig_gen.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
fir_compiler_02default:default2
 2default:default2�
�C:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.runs/synth_1/.Xil/Vivado-21156-Nebuchadnezzar/realtime/fir_compiler_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
fir_compiler_02default:default2
 2default:default2
32default:default2
12default:default2�
�C:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.runs/synth_1/.Xil/Vivado-21156-Nebuchadnezzar/realtime/fir_compiler_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2&
s_axis_data_tready2default:default2"
fir_compiler_02default:default2
fir2default:default2�
�C:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.srcs/sources_1/imports/FIR_Filter_Implimentation/fir_filter_test.sv2default:default2
262default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2&
m_axis_data_tvalid2default:default2"
fir_compiler_02default:default2
fir2default:default2�
�C:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.srcs/sources_1/imports/FIR_Filter_Implimentation/fir_filter_test.sv2default:default2
262default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
fir2default:default2"
fir_compiler_02default:default2
62default:default2
42default:default2�
�C:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.srcs/sources_1/imports/FIR_Filter_Implimentation/fir_filter_test.sv2default:default2
262default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2%
measure_sine_peak2default:default2
 2default:default2�
�C:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.srcs/sources_1/imports/FIR_Filter_Implimentation/measure_sine_peak.sv2default:default2
232default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter W_SINE bound to: 16 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
measure_sine_peak2default:default2
 2default:default2
42default:default2
12default:default2�
�C:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.srcs/sources_1/imports/FIR_Filter_Implimentation/measure_sine_peak.sv2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
fir_filter_test2default:default2
 2default:default2
52default:default2
12default:default2�
�C:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.srcs/sources_1/imports/FIR_Filter_Implimentation/fir_filter_test.sv2default:default2
32default:default8@Z8-6155h px� 
�
%s*synth2�
wFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1018.633 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1018.633 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1018.633 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
1018.6332default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
~c:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.gen/sources_1/ip/cordic_0/cordic_0/cordic_0_in_context.xdc2default:default21
sine_generator/test_sig_gen	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
~c:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.gen/sources_1/ip/cordic_0/cordic_0/cordic_0_in_context.xdc2default:default21
sine_generator/test_sig_gen	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.gen/sources_1/ip/fir_compiler_0/fir_compiler_0/fir_compiler_0_in_context.xdc2default:default2
fir	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.gen/sources_1/ip/fir_compiler_0/fir_compiler_0/fir_compiler_0_in_context.xdc2default:default2
fir	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2�
�C:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.srcs/constrs_1/imports/FIR_Filter_Implimentation/Basys3_Master.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
�C:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.srcs/constrs_1/imports/FIR_Filter_Implimentation/Basys3_Master.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
�C:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.srcs/constrs_1/imports/FIR_Filter_Implimentation/Basys3_Master.xdc2default:default25
!.Xil/fir_filter_test_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1044.6642default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0102default:default2
1044.6642default:default2
0.0002default:defaultZ17-268h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
1000.0002default:default2/
sine_generator/test_sig_gen2default:default2
aclk2default:default2
10.0002default:defaultZ38-316h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1052.738 ; gain = 34.105
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1052.738 ; gain = 34.105
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1052.738 ; gain = 34.105
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1052.738 ; gain = 34.105
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   16 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 3     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 1052.738 ; gain = 34.105
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1052.738 ; gain = 34.105
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 1052.738 ; gain = 34.105
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 1053.441 ; gain = 34.809
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1060.250 ; gain = 41.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1060.250 ; gain = 41.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1060.250 ; gain = 41.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1060.250 ; gain = 41.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1060.250 ; gain = 41.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1060.250 ; gain = 41.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
P
%s
*synth28
$+------+---------------+----------+
2default:defaulth p
x
� 
P
%s
*synth28
$|      |BlackBox name  |Instances |
2default:defaulth p
x
� 
P
%s
*synth28
$+------+---------------+----------+
2default:defaulth p
x
� 
P
%s
*synth28
$|1     |fir_compiler_0 |         1|
2default:defaulth p
x
� 
P
%s
*synth28
$|2     |cordic_0       |         1|
2default:defaulth p
x
� 
P
%s
*synth28
$+------+---------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
J
%s*synth22
+------+-------------+------+
2default:defaulth px� 
J
%s*synth22
|      |Cell         |Count |
2default:defaulth px� 
J
%s*synth22
+------+-------------+------+
2default:defaulth px� 
J
%s*synth22
|1     |cordic       |     1|
2default:defaulth px� 
J
%s*synth22
|2     |fir_compiler |     1|
2default:defaulth px� 
J
%s*synth22
|3     |BUFG         |     1|
2default:defaulth px� 
J
%s*synth22
|4     |CARRY4       |    16|
2default:defaulth px� 
J
%s*synth22
|5     |LUT1         |     1|
2default:defaulth px� 
J
%s*synth22
|6     |LUT2         |    52|
2default:defaulth px� 
J
%s*synth22
|7     |LUT3         |    17|
2default:defaulth px� 
J
%s*synth22
|8     |LUT4         |    32|
2default:defaulth px� 
J
%s*synth22
|9     |FDRE         |    63|
2default:defaulth px� 
J
%s*synth22
|10    |FDSE         |     1|
2default:defaulth px� 
J
%s*synth22
|11    |IBUF         |    19|
2default:defaulth px� 
J
%s*synth22
|12    |OBUF         |    48|
2default:defaulth px� 
J
%s*synth22
+------+-------------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1060.250 ; gain = 41.617
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:17 ; elapsed = 00:00:25 . Memory (MB): peak = 1060.250 ; gain = 7.512
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1060.250 ; gain = 41.617
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0042default:default2
1071.7732default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
162default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1079.6452default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
252default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:332default:default2
00:00:362default:default2
1079.6452default:default2
61.0122default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2x
dC:/Users/hp/Desktop/Integrated Systems Design/Lab3_Part2/Lab3_Part2.runs/synth_1/fir_filter_test.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
tExecuting : report_utilization -file fir_filter_test_utilization_synth.rpt -pb fir_filter_test_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Mar 25 20:05:05 20212default:defaultZ17-206h px� 


End Record
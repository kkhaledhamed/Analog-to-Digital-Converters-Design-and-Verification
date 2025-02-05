v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1440 -390 -640 10 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="a
b
y"
color="4 6 7"
dataset=-1
unitx=1
logx=0
logy=0
digital=1
rawfile=$netlist_dir/nor_tb.raw
sim_type=tran}
N -1160 -630 -1090 -630 {
lab=A}
N -1350 -570 -1350 -540 {
lab=GND}
N -920 -630 -830 -630 {
lab=Y}
N -1350 -630 -1160 -630 {
lab=A}
N -1100 -610 -1090 -610 {
lab=B}
N -1100 -610 -1100 -530 {
lab=B}
N -1100 -470 -1100 -440 {
lab=GND}
C {devices/code_shown.sym} -540 -590 0 0 {name=s1
only_toplevel=false
value="
*parameters
.param VDD=2 VCC=VDD
.param TRF=1n TCLK=100n
.param TSTOP=\{4*TCLK\} TDROP=0

*analysis setup and control statements
.tran 1n \{TSTOP\} \{TDROP\}

*save all voltages and currents
.save all
"}
C {devices/vsource.sym} -1350 -600 0 0 {name=V1 value="pulse(0 VDD 0 TRF TRF \{TCLK/2\} \{TCLK\})" savecurrent=false}
C {devices/gnd.sym} -1350 -540 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -1120 -630 1 0 {name=p1 sig_type=std_logic lab=A
}
C {devices/lab_pin.sym} -870 -630 1 0 {name=p2 sig_type=std_logic lab=Y}
C {devices/launcher.sym} -1300 -420 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/inv_tb.raw tran"
}
C {devices/code_shown.sym} -510 -280 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} -1100 -500 0 0 {name=V2 value="pulse(0 VDD \{TCLK/4\} TRF TRF \{TCLK/2\} \{TCLK\})" savecurrent=false}
C {devices/gnd.sym} -1100 -440 0 0 {name=l2 lab=GND
value="pulse(0 VDD \{TCLK/4\} TRF TRF \{TCLK/2\} \{TCLK\})"}
C {devices/lab_pin.sym} -1100 -570 0 0 {name=p3 sig_type=std_logic lab=B
}
C {/home/tare/Desktop/Final/nor.sym} -940 -620 0 0 {name=x1}

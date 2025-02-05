v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -660 -280 140 120 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
digital=1
rawfile=$netlist_dir/dff_tb.raw
sim_type=tran
color="6 6 6 6 6 6"
node="d
clk
set
rst
q
qb"}
N -970 -570 -970 -540 {
lab=GND}
N -970 -370 -970 -340 {
lab=GND}
N -970 -190 -970 -160 {
lab=GND}
N -970 -30 -970 0 {
lab=GND}
N -970 -630 -840 -630 {
lab=D}
N -970 -430 -850 -430 {
lab=CLK}
N -970 -250 -840 -250 {
lab=SET}
N -970 -90 -830 -90 {
lab=RST}
N -80 -620 -50 -620 {
lab=Q}
N -80 -570 -50 -570 {
lab=QB}
C {devices/code_shown.sym} 240 -480 0 0 {name=s1
only_toplevel=false
value="
*parameters
.param VDD=2 VCC=VDD
.param TRF=1n TCLK=100n
.param TSTOP=\{20*TCLK\} TDROP=0

*analysis setup and control statements
.tran 1n \{TSTOP\} \{TDROP\}

*save all voltages and currents
.save all
"}
C {devices/vsource.sym} -970 -600 0 0 {name=V1 value="pulse(0 VDD 0 TRF TRF \{3*TCLK\} \{4*TCLK\})" savecurrent=false}
C {devices/gnd.sym} -970 -540 0 0 {name=l1 lab=GND}
C {devices/launcher.sym} -520 -310 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/inv_tb.raw tran"
}
C {devices/code_shown.sym} 270 -170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} -970 -400 0 0 {name=V2 value="pulse(0 VDD \{TCLK/4\} TRF TRF \{TCLK/2\} \{TCLK\})" savecurrent=false}
C {devices/gnd.sym} -970 -340 0 0 {name=l2 lab=GND
value="pulse(0 VDD \{TCLK/4\} TRF TRF \{TCLK/2\} \{TCLK\})"}
C {devices/vsource.sym} -970 -220 0 0 {name=V4 value="pulse(0 VDD 0 TRF TRF \{3*TCLK\} \{16*TCLK\})" savecurrent=false}
C {devices/gnd.sym} -970 -160 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -970 -60 0 0 {name=V3 value="pulse(0 VDD \{8*TCLK\} TRF TRF \{3*TCLK\} \{16*TCLK\})" savecurrent=false}
C {devices/gnd.sym} -970 0 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -840 -630 2 0 {name=p1 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} -850 -430 2 0 {name=p3 sig_type=std_logic lab=CLK
}
C {devices/lab_pin.sym} -840 -250 2 0 {name=p4 sig_type=std_logic lab=SET}
C {devices/lab_pin.sym} -830 -90 2 0 {name=p5 sig_type=std_logic lab=RST
}
C {devices/lab_pin.sym} -240 -630 0 0 {name=p6 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} -240 -610 0 0 {name=p7 sig_type=std_logic lab=CLK
}
C {devices/lab_pin.sym} -240 -590 0 0 {name=p8 sig_type=std_logic lab=SET}
C {devices/lab_pin.sym} -240 -570 0 0 {name=p9 sig_type=std_logic lab=RST
}
C {devices/lab_pin.sym} -50 -620 2 0 {name=p10 sig_type=std_logic lab=Q
}
C {devices/lab_pin.sym} -50 -570 2 0 {name=p11 sig_type=std_logic lab=QB
}
C {/home/tare/Desktop/Final/dff.sym} -90 -600 0 0 {name=x1}

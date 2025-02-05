v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -720 160 80 560 {flags=graph
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
y"
color="4 6"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
N -440 -80 -370 -80 {
lab=A}
N -440 -20 -440 10 {
lab=GND}
N -200 -80 -110 -80 {
lab=Y}
C {devices/code_shown.sym} 180 -40 0 0 {name=s1
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
C {devices/vsource.sym} -440 -50 0 0 {name=V1 value="pulse(0 VDD 0 TRF TRF \{TCLK/2\} \{TCLK\})" savecurrent=false}
C {devices/gnd.sym} -440 10 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -400 -80 1 0 {name=p1 sig_type=std_logic lab=A
}
C {devices/lab_pin.sym} -150 -80 1 0 {name=p2 sig_type=std_logic lab=Y}
C {devices/launcher.sym} -580 130 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/inv_tb.raw tran"
}
C {devices/code_shown.sym} 210 270 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {/home/tare/Desktop/Final/inv.sym} -220 -80 0 0 {name=x1}

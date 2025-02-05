v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -420 10 380 410 {flags=graph
y1=0
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="cmp
rst
clk
dw7
dw6
dw5
dw4
dw3
dw2
dw1
dw0
eoc"
color="6 6 6 6 6 6 6 6 6 6 6 6"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
N -760 -270 -760 -240 {
lab=GND}
N -760 -70 -760 -40 {
lab=GND}
N -760 130 -760 160 {
lab=GND}
N -760 -330 -630 -330 {
lab=CMP}
N -760 -130 -640 -130 {
lab=CLK}
N -760 70 -620 70 {
lab=RST}
N -250 -290 -150 -290 {
lab=CMP}
N -250 -270 -150 -270 {
lab=CLK}
N -250 -250 -150 -250 {
lab=RST}
N 150 -290 280 -290 {
lab=DW[7..0]}
N 150 -270 280 -270 {
lab=DW_B[7..0]}
N 150 -250 280 -250 {
lab=EOC}
C {devices/code_shown.sym} 450 -180 0 0 {name=s1
only_toplevel=false
value="
*parameters
.param VDD=2 VCC=VDD
.param TRF=1n TCLK=100n
.param TSTOP=\{10*TCLK\} TDROP=0

*analysis setup and control statements
.tran 1n \{TSTOP\} \{TDROP\}

*save all voltages and currents
.save all
"}
C {devices/vsource.sym} -760 -300 0 0 {name=V1 value="pulse(0 VDD 0 TRF TRF \{TCLK\} \{2*TCLK\})"  savecurrent=false}
C {devices/gnd.sym} -760 -240 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 480 130 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} -760 -100 0 0 {name=V2 value="pulse(0 VDD \{TCLK/4\} TRF TRF \{TCLK/2\} \{TCLK\})" savecurrent=false}
C {devices/gnd.sym} -760 -40 0 0 {name=l2 lab=GND
value="pulse(0 VDD \{TCLK/4\} TRF TRF \{TCLK/2\} \{TCLK\})"}
C {devices/vsource.sym} -760 100 0 0 {name=V3 value="pulse(0 VDD 0 TRF TRF \{TCLK\} \{20*TCLK\})" savecurrent=false}
C {devices/gnd.sym} -760 160 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -640 -130 2 0 {name=p3 sig_type=std_logic lab=CLK
}
C {devices/lab_pin.sym} -620 70 2 0 {name=p5 sig_type=std_logic lab=RST
}
C {devices/lab_pin.sym} -250 -290 0 0 {name=p2 sig_type=std_logic lab=CMP}
C {devices/lab_pin.sym} -250 -270 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -250 -250 0 0 {name=p7 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} 280 -290 2 0 {name=p8 sig_type=std_logic lab=DW[7..0]}
C {devices/lab_pin.sym} 280 -270 2 0 {name=p9 sig_type=std_logic lab=DW_B[7..0]}
C {devices/lab_pin.sym} 280 -250 2 0 {name=p10 sig_type=std_logic lab=EOC}
C {devices/lab_pin.sym} -630 -330 2 0 {name=p1 sig_type=std_logic lab=CMP}
C {/home/tare/Desktop/sar_adc/sar_logic.sym} 0 -270 0 0 {name=x1}
C {devices/launcher.sym} -330 -20 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/sar_logic_tb.raw tran"
}

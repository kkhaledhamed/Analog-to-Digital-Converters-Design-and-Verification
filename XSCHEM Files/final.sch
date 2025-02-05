v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 750 -400 1550 0 {flags=graph
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
node="vsah
vsar
x2.vdac"
color="5 6 8"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 750 20 1550 420 {flags=graph
y1=0

ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=2e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
smpl
eoc
DW;dw7,dw6,dw5,dw4,dw3,dw2,dw1,dw0"
color="6 4 6 4"
dataset=-1
unitx=1
logx=0
logy=0
digital=1
y2=2}
N 370 -60 450 -60 {
lab=VSAH}
N 450 -60 450 -50 {
lab=VSAH}
N 450 10 450 20 {
lab=GND}
N 30 -70 70 -70 {
lab=VSAR}
N 70 -70 70 -60 {
lab=VSAR}
N 70 -60 180 -60 {
lab=VSAR}
N 240 -60 310 -60 {
lab=#net1}
N 140 110 170 110 {
lab=GND}
N -260 540 -260 560 {
lab=GND}
N -260 460 -260 480 {
lab=#net2}
N -140 540 -140 560 {
lab=GND}
N -140 460 -140 480 {
lab=VIN}
N 50 540 50 560 {
lab=GND}
N 50 460 50 480 {
lab=VDD}
N 180 540 180 560 {
lab=GND}
N 180 460 180 480 {
lab=VMID}
N 320 540 320 560 {
lab=GND}
N 320 460 320 480 {
lab=VREFN}
N 450 540 450 560 {
lab=GND}
N 450 460 450 480 {
lab=VREFP}
N 550 540 550 560 {
lab=GND}
N 550 460 550 480 {
lab=VCM}
N 660 540 660 560 {
lab=GND}
N 660 460 660 480 {
lab=CLK}
N 980 550 980 570 {
lab=GND}
N 980 470 980 490 {
lab=SMPL}
N 140 230 270 230 {
lab=DW[7..0]}
N 140 190 260 190 {
lab=EOC}
C {devices/switch_ngspice.sym} 210 -60 1 0 {name=S1 model=SWITCH1}
C {devices/switch_ngspice.sym} 340 -60 1 0 {name=S2 model=SWITCH1}
C {devices/capa.sym} 450 -20 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 450 20 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 450 -60 0 1 {name=p1 sig_type=std_logic lab=VSAH}
C {devices/lab_pin.sym} -40 -140 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -100 -140 0 0 {name=p3 sig_type=std_logic lab=VREFP}
C {devices/lab_pin.sym} -100 0 0 0 {name=p4 sig_type=std_logic lab=VREFN}
C {devices/lab_pin.sym} 120 -60 3 1 {name=p5 sig_type=std_logic lab=VSAR}
C {devices/lab_pin.sym} -170 -70 0 0 {name=p6 sig_type=bus lab=DW[7..0],2*GND}
C {devices/lab_pin.sym} 190 -100 3 1 {name=p8 sig_type=std_logic lab=VMID}
C {devices/lab_pin.sym} 210 -100 3 1 {name=p9 sig_type=std_logic lab=EOC}
C {devices/lab_pin.sym} 320 -100 3 1 {name=p10 sig_type=std_logic lab= CLK}
C {devices/lab_pin.sym} 340 -100 3 1 {name=p7 sig_type=std_logic lab=VMID}
C {devices/code_shown.sym} -50 320 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/lab_pin.sym} -160 130 0 0 {name=p11 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} -160 150 0 0 {name=p12 sig_type=std_logic lab=SMPL}
C {devices/lab_pin.sym} -160 110 0 0 {name=p13 sig_type=std_logic lab=CLK}
C {devices/gnd.sym} 170 110 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 140 150 0 1 {name=p14 sig_type=std_logic lab=VREFP}
C {devices/lab_pin.sym} 140 170 0 1 {name=p15 sig_type=std_logic lab=VREFN}
C {devices/lab_pin.sym} 140 130 2 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 140 190 0 1 {name=p17 sig_type=std_logic lab=EOC}
C {devices/lab_pin.sym} 140 210 2 0 {name=p18 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 140 230 2 0 {name=p19 sig_type=bus lab=DW[7..0]}
C {devices/vsource.sym} -260 510 0 0 {name=V1 value=\{VIN_DC\} savecurrent=false}
C {devices/gnd.sym} -260 560 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -140 460 1 0 {name=p20 sig_type=std_logic lab=VIN}
C {devices/vsource.sym} -140 510 0 0 {name=V2 value= "sin(\{VDC\} \{VPK\} \{FIN\})" savecurrent=false}
C {devices/gnd.sym} -140 560 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 50 510 0 0 {name=V3 value=\{VDD\} savecurrent=false}
C {devices/gnd.sym} 50 560 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 50 460 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 180 510 0 0 {name=V4 value=\{VDD/2\} savecurrent=false}
C {devices/gnd.sym} 180 560 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 180 460 0 0 {name=p22 sig_type=std_logic lab=VMID}
C {devices/vsource.sym} 320 510 0 0 {name=V5 value=\{VREFN\} savecurrent=false}
C {devices/gnd.sym} 320 560 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 320 460 0 0 {name=p23 sig_type=std_logic lab=VREFN}
C {devices/vsource.sym} 450 510 0 0 {name=V6 value=\{VREFP\} savecurrent=false}
C {devices/gnd.sym} 450 560 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 450 460 0 0 {name=p24 sig_type=std_logic lab=VREFP}
C {devices/vsource.sym} 550 510 0 0 {name=V7 value=\{VCM\} savecurrent=false}
C {devices/gnd.sym} 550 560 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 550 460 0 0 {name=p25 sig_type=std_logic lab=VCM}
C {devices/vsource.sym} 660 510 0 0 {name=V8 value="pulse(0 VDD \{TCLK/2\} TRF TRF \{TCLK/2\} \{TCLK\})" savecurrent=false}
C {devices/gnd.sym} 660 560 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 660 460 0 0 {name=p26 sig_type=std_logic lab=CLK}
C {devices/vsource.sym} 980 520 0 0 {name=V9 value="pulse(0 VDD \{TCLK/2 + TCLK/4\} TRF TRF \{TCLK\} TS)" savecurrent=false}
C {devices/gnd.sym} 980 570 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 980 470 0 0 {name=p27 sig_type=std_logic lab=SMPL}
C {/home/tare/Desktop/Final_1/DAC_10.sym} -70 -70 0 0 {name=x1}
C {devices/noconn.sym} 260 190 2 0 {name=l12}
C {devices/code.sym} 470 200 0 0 {name=COMMANDS1
simulator=ngspice
only_toplevel=false
value="
* ngspice commands
*Required model for the switch (the switch threshold default value is zero)
* you can define the threshold using vt=\{VDD/2\} (not needed here)
.model SWITCH1 sw
*These are the values of the parameters to be used
.param TS=1u TCLK=100n TRF=1n TDROP=\{0.5/FIN\} TSTOP=\{(NCYC/FIN)+TDROP\}
.param NCYC=5 NFFT=256 FIN=\{(NCYC/NFFT)/TS\}
.param VDD=3 VDC=\{1\} VCM=\{1\} VPK=\{0.5\} VREFP=\{VCM+VPK\} VREFN=\{VCM-VPK\}
.param VCC=VDD
*.param VIN_DC=\{VREFN\}
*.param VIN_DC=\{VREFP\}
.param VIN_DC= \{VREFN +(128+32+8+2+0.5)*2*VPK/(2**8)\}
*Analysis setup and control statements
.tran 1n \{TSTOP\} \{TDROP\}
*.tran 1n \{2*TS\}
*save all voltages and currents
.save all
*options for an accurate precision output
*.options reltol=1e-6 vntol=1u abstol=1p
* option to make output file ascii
*.options filetype=ascii
"}
C {devices/launcher.sym} 620 -380 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/final.raw tran"
}
C {/home/tare/Desktop/last/SAR_DAC.sym} -10 170 0 0 {name=x2}
C {devices/launcher.sym} 600 70 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/final.raw tran"
}

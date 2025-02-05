v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 640 -290 1440 110 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="voutp
voutn
vinp
vinn"
color="7 6 11 8"
dataset=-1
unitx=1
logx=0
logy=0
}
N -150 -140 140 -140 {
lab=VINP}
N 100 -120 140 -120 {
lab=VINN}
N 390 -160 540 -160 {
lab=VOUTP}
N 390 -100 540 -100 {
lab=VOUTN}
C {devices/vsource.sym} -150 -110 0 0 {name=V1 value="pwl(0 0 10n VCC 20n 0 30n VCC)" savecurrent=false}
C {devices/vsource.sym} 100 -90 0 0 {name=V2 value=1 savecurrent=false}
C {devices/gnd.sym} 100 -60 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -150 -80 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} -150 20 0 0 {name=s1 only_toplevel=false value="
.param VCC=2
.tran 1n 30n 
.save all
"}
C {devices/lab_pin.sym} 540 -160 2 0 {name=p1 sig_type=std_logic lab=VOUTP}
C {devices/lab_pin.sym} 540 -100 2 0 {name=p2 sig_type=std_logic lab=VOUTN}
C {devices/launcher.sym} 720 -320 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/untitled.raw tran"
}
C {devices/lab_pin.sym} 50 -140 1 0 {name=p3 sig_type=std_logic lab=VINP}
C {devices/lab_pin.sym} 120 -120 3 0 {name=p4 sig_type=std_logic lab=VINN}
C {/home/tare/Desktop/Final/comperator.sym} 290 -130 0 0 {name=x1}

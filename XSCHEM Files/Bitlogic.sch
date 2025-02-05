v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 520 -60 520 -40 {
lab=GND}
N 380 -80 380 -40 {
lab=GND}
N 280 -210 280 -150 {
lab=BIN}
N 280 -210 340 -210 {
lab=BIN}
N 280 -150 280 -90 {
lab=BIN}
N 280 -90 340 -90 {
lab=BIN}
N 380 -260 380 -240 {
lab=ONE}
N 380 -180 380 -140 {
lab=BOUT}
N 380 -160 400 -160 {
lab=BOUT}
N 120 -60 120 -40 {
lab=GND}
N 120 -210 120 -200 {
lab=VDD}
N 120 -140 120 -120 {
lab=VMID}
C {devices/vsource.sym} 520 -90 0 0 {name=V1 value=1}
C {devices/gnd.sym} 520 -40 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 380 -40 0 0 {name=l2 lab=GND}
C {devices/switch_ngspice.sym} 380 -210 0 0 {name=S1 model=SWITCH1}
C {devices/switch_ngspice.sym} 380 -110 0 0 {name=S2 model=SWITCH1}
C {devices/opin.sym} 400 -160 0 0 {name=p2 lab=BOUT}
C {devices/ipin.sym} 280 -150 0 0 {name=p3 lab=BIN}
C {devices/iopin.sym} 120 -210 3 0 {name=p1 lab=VDD}
C {devices/lab_pin.sym} 520 -120 1 0 {name=p4 sig_type=std_logic lab=ONE}
C {devices/lab_pin.sym} 380 -260 1 0 {name=p5 sig_type=std_logic lab=ONE}
C {devices/gnd.sym} 120 -40 0 0 {name=l18 lab=GND}
C {devices/res.sym} 120 -90 0 0 {name=R1
value=1meg
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 120 -170 0 0 {name=R2
value=1meg
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 120 -130 2 0 {name=p6 sig_type=std_logic lab=VMID}
C {devices/lab_pin.sym} 340 -190 0 0 {name=p7 sig_type=std_logic lab=VMID}
C {devices/lab_pin.sym} 340 -110 0 0 {name=p8 sig_type=std_logic lab=VMID}

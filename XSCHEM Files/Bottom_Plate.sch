v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 480 120 480 190 {
lab=VBOT}
N 200 120 480 120 {
lab=VBOT}
N 200 120 200 280 {
lab=VBOT}
N -20 120 -20 310 {
lab=VBOT}
N -20 120 200 120 {
lab=VBOT}
N -20 340 70 340 {
lab=AGND}
N 200 310 320 310 {
lab=AVDD}
N -20 370 -20 420 {
lab=VREFN}
N 200 340 200 420 {
lab=VREFP}
N -150 340 -60 340 {
lab=#net1}
N 120 310 120 510 {
lab=#net2}
N 120 310 160 310 {
lab=#net2}
N 480 190 480 310 {
lab=VBOT}
N -150 340 -150 510 {
lab=#net1}
N 480 310 480 330 {
lab=VBOT}
C {devices/iopin.sym} 0 -60 0 0 {name=p1 lab=AGND}
C {devices/iopin.sym} 90 -60 0 0 {name=p2 lab=AVDD}
C {devices/iopin.sym} 260 -60 0 0 {name=p3 lab=VREFP}
C {devices/iopin.sym} 170 -60 0 0 {name=p4 lab=VREFN}
C {devices/opin.sym} 0 -30 0 0 {name=p5 lab=VBOT}
C {devices/ipin.sym} 140 -30 0 0 {name=p6 lab=VIN}
C {devices/ipin.sym} 190 -30 0 0 {name=p7 lab=D}
C {devices/ipin.sym} 290 -30 0 0 {name=p9 lab=SMPL_B}
C {devices/lab_pin.sym} 500 330 1 0 {name=p10 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 440 330 1 0 {name=p11 sig_type=std_logic lab=SMPL}
C {devices/lab_pin.sym} 460 330 1 0 {name=p12 sig_type=std_logic lab=AGND}
C {devices/lab_pin.sym} 520 330 1 0 {name=p13 sig_type=std_logic lab=AVDD}
C {gf180mcu_tests/gf180mcu_fd_pr/nmos_3p3.sym} -40 340 0 0 {name=M1
L=0.28u
W=5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nmos_3p3
spiceprefix=X
}
C {gf180mcu_tests/gf180mcu_fd_pr/pmos_3p3.sym} 180 310 0 0 {name=M2
L=0.28u
W=10u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pmos_3p3
spiceprefix=X
}
C {devices/lab_pin.sym} 200 120 1 0 {name=p14 sig_type=std_logic lab=VBOT}
C {devices/lab_pin.sym} 70 340 1 0 {name=p15 sig_type=std_logic lab=AGND}
C {devices/lab_pin.sym} 320 310 1 0 {name=p16 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} -20 420 0 0 {name=p17 sig_type=std_logic lab=VREFN}
C {devices/lab_pin.sym} 200 420 0 0 {name=p18 sig_type=std_logic lab=VREFP}
C {devices/lab_pin.sym} -150 680 3 0 {name=p19 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} -130 680 3 0 {name=p20 sig_type=std_logic lab=SMPL}
C {devices/lab_pin.sym} 110 690 3 0 {name=p21 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 130 690 3 0 {name=p22 sig_type=std_logic lab=SMPL_B}
C {devices/ipin.sym} 370 -30 0 0 {name=p8 lab=SMPL}
C {/home/tare/Desktop/Final_1/nor.sym} -140 530 3 0 {name=x2}
C {/home/tare/Desktop/Final_1/nand.sym} 120 540 3 0 {name=x3}
C {devices/code_shown.sym} 780 60 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {/home/tare/Desktop/last/tg.sym} 480 480 3 0 {name=x1}

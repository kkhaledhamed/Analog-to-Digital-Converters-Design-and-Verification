v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 290 -570 290 -530 {
lab=VDAC}
N -270 -570 290 -570 {
lab=VDAC}
N -270 -570 -270 -530 {
lab=VDAC}
N 220 -570 220 -530 {
lab=VDAC}
N 150 -570 150 -530 {
lab=VDAC}
N 80 -570 80 -530 {
lab=VDAC}
N -10 -570 -10 -530 {
lab=VDAC}
N -90 -570 -90 -530 {
lab=VDAC}
N -140 -570 -140 -530 {
lab=VDAC}
N -200 -570 -200 -530 {
lab=VDAC}
C {devices/iopin.sym} -70 -260 0 0 {name=p2 lab=AVDD}
C {devices/iopin.sym} -70 -230 0 0 {name=p3 lab=VREFP}
C {devices/iopin.sym} -170 -230 0 0 {name=p4 lab=VREFN}
C {devices/ipin.sym} -110 -120 0 0 {name=p6 lab=VIN}
C {devices/ipin.sym} -90 -190 0 0 {name=p9 lab=SMPL_B}
C {devices/ipin.sym} -100 -150 0 0 {name=p8 lab=SMPL}
C {devices/opin.sym} -80 -110 0 0 {name=p5 lab=VDAC}
C {devices/ipin.sym} 20 -190 0 0 {name=p7 lab=DW[7..0]
}
C {devices/ipin.sym} 0 -150 0 0 {name=p10 lab=DW_D}
C {devices/lab_pin.sym} 410 -340 0 0 {name=p11 sig_type=bus lab=DW[7..0]}
C {devices/lab_pin.sym} 410 -170 0 0 {name=p12 sig_type=std_logic lab=SMPL_B}
C {devices/lab_pin.sym} 410 -230 0 0 {name=p13 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 410 -190 0 0 {name=p14 sig_type=std_logic lab=SMPL}
C {devices/lab_pin.sym} 710 -170 0 1 {name=p15 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 710 -210 0 1 {ame=p17 sig_type=std_logic lab=VREFP}
C {devices/lab_pin.sym} 710 -230 0 1 {name=p18 sig_type=std_logic lab=VREFN}
C {devices/lab_pin.sym} 710 -280 0 1 {name=p19 sig_type=bus lab=VBOT[7..0]}
C {devices/lab_pin.sym} 410 -210 0 0 {name=p17 sig_type=std_logic lab=DW_D}
C {devices/lab_pin.sym} 410 -300 0 0 {name=p20 sig_type=std_logic lab=SMPL_B}
C {devices/lab_pin.sym} 410 -360 0 0 {name=p21 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 410 -320 0 0 {name=p22 sig_type=std_logic lab=SMPL}
C {devices/lab_pin.sym} 710 -300 0 1 {name=p23 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 710 -340 0 1 {ame=p17 sig_type=std_logic lab=VREFP}
C {devices/lab_pin.sym} 710 -360 0 1 {name=p25 sig_type=std_logic lab=VREFN}
C {devices/lab_pin.sym} 710 -150 0 1 {name=p26 sig_type=std_logic lab=VBOT_D}
C {devices/capa.sym} 290 -500 0 0 {name=C0
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 220 -500 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 150 -500 0 0 {name=C2
m=2
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 80 -500 0 0 {name=C3
m=4
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -10 -500 0 0 {name=C4
m=8
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -90 -500 0 0 {name=C5
m=16
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -140 -500 0 0 {name=C6
m=32
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -200 -500 0 0 {name=C7
m=64
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -270 -500 0 0 {name=C8
m=128
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 290 -470 3 0 {name=p27 sig_type=std_logic lab=VBOT_D}
C {devices/lab_pin.sym} 220 -470 3 0 {name=p28 sig_type=std_logic lab=VBOT0}
C {devices/lab_pin.sym} 150 -470 3 0 {name=p29 sig_type=std_logic lab=VBOT1}
C {devices/lab_pin.sym} 80 -470 3 0 {name=p30 sig_type=std_logic lab=VBOT2}
C {devices/lab_pin.sym} -10 -470 3 0 {name=p31 sig_type=std_logic lab=VBOT3}
C {devices/lab_pin.sym} -90 -470 3 0 {name=p32 sig_type=std_logic lab=VBOT4}
C {devices/lab_pin.sym} -140 -470 3 0 {name=p33 sig_type=std_logic lab=VBOT5}
C {devices/lab_pin.sym} -200 -470 3 0 {name=p34 sig_type=std_logic lab=VBOT6}
C {devices/lab_pin.sym} -270 -470 3 0 {name=p35 sig_type=std_logic lab=VBOT7}
C {devices/lab_pin.sym} 290 -570 0 1 {name=p36 sig_type=std_logic lab=VDAC}
C {devices/lab_pin.sym} 710 -190 2 0 {name=p16 sig_type=std_logic lab=AGND}
C {devices/lab_pin.sym} 710 -320 2 0 {name=p24 sig_type=std_logic lab=AGND}
C {devices/iopin.sym} -160 -260 0 0 {name=p1 lab=AGND}
C {devices/code_shown.sym} 380 -540 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {/home/tare/Desktop/last/Bottom_Plate.sym} 560 -320 0 0 {name=x1[7..0]}
C {/home/tare/Desktop/last/Bottom_Plate.sym} 560 -190 0 0 {name=x2}

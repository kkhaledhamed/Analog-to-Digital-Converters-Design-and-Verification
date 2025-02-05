v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 -60 30 -60 {
lab=DW_B[7..0]}
N 480 -90 680 -90 {
lab=VDAC}
N -10 200 50 200 {
lab=SMPL_D}
N -210 200 -180 200 {
lab=SMPL_B}
N 680 -90 860 -90 {
lab=VDAC}
N 670 -90 670 0 {
lab=VDAC}
N 670 -0 670 30 {
lab=VDAC}
C {devices/iopin.sym} -160 -290 0 0 {name=p1 lab=AGND}
C {devices/iopin.sym} -70 -290 0 0 {name=p2 lab=AVDD}
C {devices/iopin.sym} -170 -260 0 0 {name=p3 lab=VREFP}
C {devices/iopin.sym} -60 -250 0 0 {name=p4 lab=VREFN}
C {devices/iopin.sym} -150 -210 0 0 {name=p5 lab=VCM}
C {devices/ipin.sym} -350 -270 0 0 {name=p6 lab=VIN}
C {devices/ipin.sym} -260 -240 0 0 {name=p8 lab=SMPL}
C {devices/ipin.sym} -270 -280 0 0 {name=p7 lab=CLK}
C {devices/opin.sym} -410 -240 0 0 {name=p9 lab=EOC}
C {devices/opin.sym} -390 -200 0 0 {name=p10 lab=DW[7..0]}
C {devices/lab_pin.sym} -390 -80 0 0 {name=p11 sig_type=std_logic lab=CMP}
C {devices/lab_pin.sym} -390 -60 0 0 {name=p12 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -390 -40 0 0 {name=p13 sig_type=std_logic lab=SMPL}
C {devices/lab_pin.sym} -90 -40 0 1 {name=p14 sig_type=std_logic lab=EOC}
C {devices/lab_pin.sym} -90 -60 0 1 {name=p15 sig_type=bus lab=DW_B[7..0]}
C {devices/lab_pin.sym} -90 -80 0 1 {name=p16 sig_type=bus lab=DW[7..0]}
C {devices/noconn.sym} 30 -60 0 1 {name=l1}
C {devices/lab_pin.sym} 180 -90 0 0 {name=p17 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 180 -170 0 0 {name=p18 sig_type=std_logic lab=SMPL_B_D}
C {devices/lab_pin.sym} 180 -130 0 0 {name=p19 sig_type=std_logic lab=SMPL_D}
C {devices/lab_pin.sym} 180 -110 0 0 {name=p20 sig_type=std_logic lab=VREFN}
C {devices/lab_pin.sym} 180 -150 0 0 {name=p21 sig_type=bus lab=DW[7..0]}
C {devices/lab_pin.sym} 480 -170 0 1 {name=p22 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 480 -150 0 1 {name=p23 sig_type=std_logic lab=AGND}
C {devices/lab_pin.sym} 480 -110 0 1 {name=p24 sig_type=std_logic lab=VREFP}
C {devices/lab_pin.sym} 480 -130 0 1 {name=p25 sig_type=std_logic lab=VREFN}
C {devices/lab_pin.sym} 480 -90 0 1 {name=p26 sig_type=std_logic lab=VDAC}
C {devices/lab_pin.sym} 860 -110 0 0 {name=p27 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 710 30 3 1 {name=p28 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 650 30 3 1 {name=p29 sig_type=std_logic lab=AGND}
C {devices/lab_pin.sym} 690 30 1 0 {name=p30 sig_type=std_logic lab=VCM}
C {devices/lab_pin.sym} 630 30 1 0 {name=p31 sig_type=std_logic lab=SMPL}
C {devices/lab_pin.sym} 1110 -130 0 1 {name=p32 sig_type=std_logic lab=CMP}
C {devices/noconn.sym} 1110 -70 0 1 {name=l2}
C {devices/lab_pin.sym} -380 200 0 0 {name=p33 sig_type=std_logic lab=SMPL}
C {devices/lab_pin.sym} -190 200 1 0 {name=p34 sig_type=std_logic lab=SMPL_B}
C {devices/lab_pin.sym} 20 200 1 0 {name=p35 sig_type=std_logic lab=SMPL_D}
C {devices/lab_pin.sym} 210 200 0 1 {name=p36 sig_type=std_logic lab=SMPL_B_D}
C {/home/tare/Desktop/Final_1/sar_logic.sym} -240 -60 0 0 {name=x8}
C {/home/tare/Desktop/Final_1/comperator.sym} 1010 -100 0 0 {name=x2}
C {/home/tare/Desktop/Final_1/inv.sym} -230 200 0 0 {name=x4}
C {/home/tare/Desktop/Final_1/inv.sym} -30 200 0 0 {name=x5}
C {/home/tare/Desktop/Final_1/inv.sym} 190 200 0 0 {name=x6}
C {devices/code_shown.sym} 250 -390 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {/home/tare/Desktop/last/Cap_DAC.sym} 330 -130 0 0 {name=x1}
C {/home/tare/Desktop/last/tg.sym} 670 180 3 0 {name=x3}

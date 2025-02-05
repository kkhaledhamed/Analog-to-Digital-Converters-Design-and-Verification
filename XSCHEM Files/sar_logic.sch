v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 360 60 430 60 {
lab=CMP}
N 360 90 430 90 {
lab=CLK}
N 360 120 430 120 {
lab=RST}
N 350 170 430 170 {
lab=DW[7..0]}
N 350 200 430 200 {
lab=DW_B[7..0]}
N 350 230 430 230 {
lab=EOC}
N -420 -150 -320 -150 {
lab=VLOW,QCNT[8..1]}
N -420 -130 -320 -130 {
lab=CLK}
N -420 -110 -320 -110 {
lab=RST,8*VLOW}
N -420 -90 -320 -90 {
lab=VLOW,8*RST}
N -160 -140 -80 -140 {
lab=QCNT[8..0]}
N -160 -90 -80 -90 {
lab=Q_B[8..0]}
N -160 10 -80 10 {
lab=DW[7..0]}
N -160 60 -80 60 {
lab=DW_B[7..0]}
N -400 0 -320 0 {
lab=CMP}
N -400 20 -320 20 {
lab=DW[6..0],EOC}
N -400 40 -320 40 {
lab=QCNT[8..1]}
N -400 60 -320 60 {
lab=VLOW,7*RST}
N -170 140 -90 140 {
lab=EOC}
N -170 190 -90 190 {
lab=#net1}
N -410 130 -330 130 {
lab=VLOW}
N -410 150 -330 150 {
lab=VLOW}
N -410 170 -330 170 {
lab=QCNT0}
N -410 190 -330 190 {
lab=RST}
C {devices/code_shown.sym} 280 -70 0 0 {name=s1 only_toplevel=false value="
V1 VLOW 0 0 
"}
C {devices/ipin.sym} 360 60 2 1 {name=p1 lab=CMP}
C {devices/opin.sym} 430 170 0 0 {name=p2 lab=DW[7..0]}
C {devices/lab_pin.sym} 430 60 0 1 {name=p5 lab=CMP}
C {devices/ipin.sym} 360 90 0 0 {name=p3 lab=CLK}
C {devices/lab_pin.sym} 430 90 2 0 {name=p4 sig_type=std_logic lab=CLK}
C {devices/ipin.sym} 360 120 0 0 {name=p6 lab=RST}
C {devices/lab_pin.sym} 430 120 2 0 {name=p7 lab=RST}
C {devices/lab_pin.sym} 350 170 0 0 {name=p8 lab=DW[7..0]}
C {devices/opin.sym} 430 200 0 0 {name=p9 lab=DW_B[7..0]}
C {devices/lab_pin.sym} 350 200 0 0 {name=p10 lab=DW_B[7..0]}
C {devices/opin.sym} 430 230 0 0 {name=p11 lab=EOC}
C {devices/lab_pin.sym} 350 230 0 0 {name=p12 lab=EOC}
C {devices/lab_pin.sym} -420 -150 0 0 {name=p13 sig_type=bus lab=VLOW,QCNT[8..1]}
C {devices/lab_pin.sym} -420 -130 0 0 {name=p14 sig_type=std_logic lab=CLK}
C {devices/lab_pin.sym} -420 -110 0 0 {name=p15 sig_type=std_logic lab=RST,8*VLOW}
C {devices/lab_pin.sym} -420 -90 0 0 {name=p16 sig_type=std_logic lab=VLOW,8*RST}
C {devices/lab_pin.sym} -80 -140 2 0 {name=p17 sig_type=bus lab=QCNT[8..0]}
C {devices/lab_pin.sym} -80 -90 2 0 {name=p18 sig_type=bus lab=Q_B[8..0]}
C {devices/lab_pin.sym} -400 0 0 0 {name=p19 sig_type=std_logic lab=CMP}
C {devices/lab_pin.sym} -400 20 0 0 {name=p20 sig_type=bus lab=DW[6..0],EOC}
C {devices/lab_pin.sym} -400 40 0 0 {name=p21 sig_type=bus lab=QCNT[8..1]}
C {devices/lab_pin.sym} -400 60 0 0 {name=p22 sig_type=std_logic lab=VLOW,7*RST}
C {devices/lab_pin.sym} -80 10 2 0 {name=p23 sig_type=bus lab=DW[7..0]}
C {devices/lab_pin.sym} -80 60 2 0 {name=p24 sig_type=bus lab=DW_B[7..0]}
C {devices/lab_pin.sym} -410 130 0 0 {name=p25 sig_type=std_logic lab=VLOW}
C {devices/lab_pin.sym} -410 150 0 0 {name=p26 sig_type=std_logic lab=VLOW}
C {devices/lab_pin.sym} -410 170 0 0 {name=p27 sig_type=std_logic lab=QCNT0}
C {devices/lab_pin.sym} -410 190 0 0 {name=p28 sig_type=std_logic lab=RST}
C {devices/lab_pin.sym} -90 140 2 0 {name=p29 sig_type=std_logic lab=EOC}
C {devices/code_shown.sym} 230 -220 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {/home/tare/Desktop/sar_adc/dff.sym} -170 -120 0 0 {name=xRING_CNT[8..0]}
C {/home/tare/Desktop/sar_adc/dff.sym} -170 30 0 0 {name=xCODE_REG[7..0]}
C {/home/tare/Desktop/sar_adc/dff.sym} -180 160 0 0 {name=x3}

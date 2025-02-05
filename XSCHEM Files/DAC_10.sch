v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {BX: Bit X (0 or VDD)
BXL: Bit X logic level (0 or 1)} 280 -360 0 0 0.4 0.4 {}
T {Binary scaling adjusted from VREFN to VREFP} 280 -60 0 0 0.4 0.4 {}
N 200 -130 250 -130 {
lab=VOUT}
N 200 -70 200 -40 {
lab=GND}
N 290 -210 310 -210 {
lab=B[9..0]}
C {Bitlogic.sym} 410 -210 0 0 {name=x1[9..0]}
C {devices/iopin.sym} 290 -210 2 0 {name=p3 lab=B[9..0]}
C {devices/iopin.sym} 710 -220 3 0 {name=p13 lab=VREFP}
C {devices/iopin.sym} 750 -220 3 0 {name=p14 lab=VREFN}
C {devices/lab_pin.sym} 510 -210 2 0 {name=p15 sig_type=std_logic lab=BO[9..0]}
C {devices/asrc.sym} 200 -100 0 0 {name=B1 function="v=(512*v(BO9)+256*v(BO8)+128*v(BO7)+64*v(BO6)+32*v(BO5)+16*v(BO4)+8*v(BO3)+4*v(BO2)+2*v(BO1)+v(BO0))*((v(VREFP)-v(VREFN))/1024)+v(VREFN)"}
C {devices/gnd.sym} 200 -40 0 0 {name=l2 lab=GND}
C {devices/iopin.sym} 250 -130 0 0 {name=p27 lab=VOUT}
C {devices/lab_pin.sym} 410 -250 0 0 {name=p28 sig_type=std_logic lab=VDD
}
C {devices/iopin.sym} 790 -220 3 0 {name=p1 lab=VDD}

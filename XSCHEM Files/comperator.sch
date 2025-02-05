v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -40 190 -40 {
lab=VINPi}
N 120 110 200 110 {
lab=VINN}
N 410 -60 460 -60 {
lab=VOUTP}
N 410 0 410 10 {
lab=GND}
N 410 60 460 60 {
lab=VOUTN}
N 410 120 410 130 {
lab=GND}
C {devices/ipin.sym} 50 -40 2 1 {name=p1 lab=VINP
}
C {devices/opin.sym} 460 -60 0 0 {name=p2 lab=VOUTP}
C {devices/vsource.sym} 80 -40 1 0 {name=V1 value=0 savecurrent=false}
C {devices/ipin.sym} 60 110 2 1 {name=p3 lab=VINN

}
C {devices/vsource.sym} 90 110 1 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} 200 110 0 1 {name=p4 sig_type=std_logic lab=VINNi}
C {devices/lab_pin.sym} 190 -40 2 0 {name=p6 sig_type=std_logic lab=VINPi}
C {devices/gnd.sym} 410 10 0 0 {name=l1 lab=GND}
C {devices/opin.sym} 460 60 0 0 {name=p5 lab=VOUTN}
C {devices/bsource.sym} 410 90 0 0 {name=B2 VAR=V FUNC="\{VCC/2 + VCC/2 *(tanh(V(VINPi,VINNi)*1e6*-1))\}"}
C {devices/gnd.sym} 410 130 0 0 {name=l2 lab=GND}
C {devices/bsource.sym} 410 -30 0 0 {name=B1 VAR=V FUNC="\{VCC/2 + VCC/2 *(tanh(V(VINPi,VINNi)*1e6))\}"
}

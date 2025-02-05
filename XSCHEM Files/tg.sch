v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -150 150 -150 {
lab=VOUT}
N 150 -150 150 70 {
lab=VOUT}
N 90 70 150 70 {
lab=VOUT}
N -30 70 30 70 {
lab=VIN}
N -30 -150 -30 70 {
lab=VIN}
N -30 -150 30 -150 {
lab=VIN}
N 60 -150 60 -100 {
lab=AGND}
N 60 -100 240 -100 {
lab=AGND}
N 60 50 60 70 {
lab=AVDD}
N 60 50 250 50 {
lab=AVDD}
N 150 -30 230 -30 {
lab=VOUT}
N -110 -20 -30 -20 {
lab=VIN}
N 60 -250 60 -190 {
lab=EN}
N 60 110 60 140 {
lab=ENB}
N 60 200 60 220 {
lab=AVDD}
N -50 150 20 150 {
lab=EN}
N -50 190 20 190 {
lab=AGND}
C {symbols/nmos_3p3.sym} 60 -170 1 0 {name=M1
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
C {symbols/pmos_3p3.sym} 60 90 3 0 {name=M2
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
C {devices/iopin.sym} 240 -100 0 0 {name=p1 lab=AGND}
C {devices/iopin.sym} 250 50 0 0 {name=p2 lab=AVDD}
C {devices/iopin.sym} 230 -30 0 0 {name=p3 lab=VOUT
}
C {devices/iopin.sym} -110 -20 0 1 {name=p4 lab=VIN}
C {devices/iopin.sym} 60 -250 3 0 {name=p5 lab=EN}
C {devices/vcvs.sym} 60 170 0 0 {name=E1 value=-1}
C {devices/lab_pin.sym} -50 150 0 0 {name=p7 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} -50 190 0 0 {name=p8 sig_type=std_logic lab=AGND}
C {devices/lab_pin.sym} 60 220 3 0 {name=p6 sig_type=std_logic lab=AVDD
}
C {devices/lab_pin.sym} 60 130 0 0 {name=p9 sig_type=std_logic lab=ENB}
C {devices/code_shown.sym} 310 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}

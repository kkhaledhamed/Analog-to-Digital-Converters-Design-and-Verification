v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -250 -10 -170 -10 {
lab=Y}
N -230 20 -140 20 {
lab=A}
N -230 60 -140 60 {
lab=B}
C {devices/ipin.sym} -230 20 0 0 {name=p1 lab=A
}
C {devices/opin.sym} -170 -10 0 0 {name=p2 lab=Y
}
C {devices/code_shown.sym} -70 -70 0 0 {name=s1 only_toplevel=false
value="
*nand model
a1 [A b] Yi my_nand
.model my_nand d_nand(rise_delay = 1e-9 fall_delay = 1e-9
+                        input_load = 1e-12)

*force netlisting of digital outputs
v1 Yi Y 0
"}
C {devices/lab_pin.sym} -250 -10 0 0 {name=p3 sig_type=std_logic lab=Y
}
C {devices/lab_pin.sym} -140 20 2 0 {name=p4 sig_type=std_logic lab=A
}
C {devices/code_shown.sym} -90 -200 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/ipin.sym} -230 60 0 0 {name=p5 lab=B
}
C {devices/lab_pin.sym} -140 60 2 0 {name=p6 sig_type=std_logic lab=B
}

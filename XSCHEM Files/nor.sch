v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -390 -50 -310 -50 {
lab=Y}
N -370 -20 -280 -20 {
lab=A}
N -370 20 -280 20 {
lab=B}
C {devices/ipin.sym} -370 -20 0 0 {name=p1 lab=A
}
C {devices/opin.sym} -310 -50 0 0 {name=p2 lab=Y
}
C {devices/code_shown.sym} -210 -110 0 0 {name=s1 only_toplevel=false
value="
*nor model
a1 [A b] Yi my_nor
.model my_nor d_nor(rise_delay = 1e-9 fall_delay = 1e-9
+                        input_load = 1e-12)

*force netlisting of digital outputs
v1 Yi Y 0
"}
C {devices/lab_pin.sym} -390 -50 0 0 {name=p3 sig_type=std_logic lab=Y
}
C {devices/lab_pin.sym} -280 -20 2 0 {name=p4 sig_type=std_logic lab=A
}
C {devices/code_shown.sym} -230 -240 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/ipin.sym} -370 20 0 0 {name=p5 lab=B
}
C {devices/lab_pin.sym} -280 20 2 0 {name=p6 sig_type=std_logic lab=B
}

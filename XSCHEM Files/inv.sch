v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 0 150 0 {
lab=Y}
N 90 30 180 30 {
lab=A}
C {devices/ipin.sym} 90 30 0 0 {name=p1 lab=A
}
C {devices/opin.sym} 150 0 0 0 {name=p2 lab=Y
}
C {devices/code_shown.sym} 250 -60 0 0 {name=s1 only_toplevel=false
value="
*inverter model
a1 A Yi my_inv
.model my_inv d_inverter(rise_delay = 1e-9 fall_delay = 1e-9
+                        input_load = 1e-12)

*force netlisting of digital outputs
v1 Yi Y 0
"}
C {devices/lab_pin.sym} 70 0 0 0 {name=p3 sig_type=std_logic lab=Y
}
C {devices/lab_pin.sym} 180 30 2 0 {name=p4 sig_type=std_logic lab=A
}
C {devices/code_shown.sym} 230 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}

v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -400 -130 -320 -130 {
lab=Q}
N -400 -30 -310 -30 {
lab=D}
N -400 10 -310 10 {
lab=CLK}
N -400 50 -310 50 {
lab=SET}
N -400 90 -310 90 {
lab=RESET}
N -400 -90 -320 -90 {
lab=QB}
C {devices/ipin.sym} -400 -30 0 0 {name=p1 lab=D
}
C {devices/opin.sym} -320 -130 0 0 {name=p2 lab=Q
}
C {devices/code_shown.sym} -240 -120 0 0 {name=s1 only_toplevel=false
value="
*nor model
a1 D CLK SET RESET OUT OUTI my_dff
.model my_dff d_dff(clk_delay = 13.0e-9 set_delay = 25.0e-9 
+                  reset_delay = 27.0e-9 ic = 2 rise_delay = 10.0e-9 
+                  fall_delay = 3e-9)

*force netlisting of digital outputs
v1 OUT Q 0
v2 OUTI QB 1
"}
C {devices/lab_pin.sym} -400 -130 0 0 {name=p3 sig_type=std_logic lab=Q
}
C {devices/lab_pin.sym} -310 -30 2 0 {name=p4 sig_type=std_logic lab=D

}
C {devices/code_shown.sym} -260 -250 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/ipin.sym} -400 10 0 0 {name=p5 lab=CLK


}
C {devices/lab_pin.sym} -310 10 2 0 {name=p6 sig_type=std_logic lab=CLK

}
C {devices/ipin.sym} -400 50 0 0 {name=p7 lab=SET
}
C {devices/lab_pin.sym} -310 50 2 0 {name=p8 sig_type=std_logic lab=SET
}
C {devices/ipin.sym} -400 90 0 0 {name=p9 lab=RESET


}
C {devices/lab_pin.sym} -310 90 2 0 {name=p10 sig_type=std_logic lab=RESET
}
C {devices/opin.sym} -320 -90 0 0 {name=p11 lab=QB
}
C {devices/lab_pin.sym} -400 -90 0 0 {name=p12 lab=QB
}

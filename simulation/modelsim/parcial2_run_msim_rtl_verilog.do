transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/edufr/OneDrive/Escritorio/Facultad/Proyecto\ Arqui/proyectoArqui {C:/Users/edufr/OneDrive/Escritorio/Facultad/Proyecto Arqui/proyectoArqui/arm.sv}


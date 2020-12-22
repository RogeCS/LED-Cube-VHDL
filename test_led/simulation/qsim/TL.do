onerror {quit -f}
vlib work
vlog -work work TL.vo
vlog -work work TL.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.TL_vlg_vec_tst
vcd file -direction TL.msim.vcd
vcd add -internal TL_vlg_vec_tst/*
vcd add -internal TL_vlg_vec_tst/i1/*
add wave /*
run -all

onerror {quit -f}
vlib work
vlog -work work prueba.vo
vlog -work work prueba.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.prueba_vlg_vec_tst
vcd file -direction prueba.msim.vcd
vcd add -internal prueba_vlg_vec_tst/*
vcd add -internal prueba_vlg_vec_tst/i1/*
add wave /*
run -all

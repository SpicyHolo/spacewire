vlog -work work /home/quartus/spacewire/simulation/modelsim/signal_test.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.spacewire_vlg_vec_tst
onerror {resume}
add wave {spacewire_vlg_vec_tst/i1/CLK}
add wave {spacewire_vlg_vec_tst/i1/SpWT_linkstart}
add wave {spacewire_vlg_vec_tst/i1/SpWR_linkstart}
add wave {spacewire_vlg_vec_tst/i1/SpWT_do}
add wave {spacewire_vlg_vec_tst/i1/SpWT_so}
add wave {spacewire_vlg_vec_tst/i1/SpWR_do}
add wave {spacewire_vlg_vec_tst/i1/SpW_so}
run -all

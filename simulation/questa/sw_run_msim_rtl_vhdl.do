transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/quartus/sw/project/sw_components/spwrecvfront_generic.vhd}
vcom -93 -work work {/home/quartus/sw/project/sw_components/spwram.vhd}
vcom -93 -work work {/home/quartus/sw/project/sw_components/spwpkg.vhd}
vcom -93 -work work {/home/quartus/sw/project/sw_components/spwxmit.vhd}
vcom -93 -work work {/home/quartus/sw/project/sw_components/spwstream.vhd}
vcom -93 -work work {/home/quartus/sw/project/sw_components/spwrecv.vhd}
vcom -93 -work work {/home/quartus/sw/project/sw_components/spwlink.vhd}


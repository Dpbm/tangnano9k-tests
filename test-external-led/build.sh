#!/bin/sh
yosys -p "synth_gowin -json test.json" top.v
nextpnr-himbaechel --json test.json --write pnrtest.json --device "GW1NR-LV9QN88PC6/I5" --vopt family=GW1N-9C --vopt cst=top.cst
gowin_pack -d GW1N-9C -o pack.fs pnrtest.json
openFPGALoader -b tangnano9k pack.fs

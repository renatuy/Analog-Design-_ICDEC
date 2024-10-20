** sch_path: /home/lcyvan/opamp/mag/opampfinal.sch
.subckt opampfinal VDD VIN VIP OUT GND RS
*.PININFO VDD:B VIN:B VIP:B OUT:B GND:B RS:B
x1 net2 net1 GND RS nmoscs
x2 VDD net3 net1 net2 pmoscs
x3 net3 VDD VIN VIP net4 OUT pmosdif
x4 net4 OUT GND nmoscs2
.ends

* expanding   symbol:  /home/lcyvan/opamp/xschem/nmoscs.sym # of pins=4
** sym_path: /home/lcyvan/opamp/xschem/nmoscs.sym
** sch_path: /home/lcyvan/opamp/xschem/nmoscs.sch
.subckt nmoscs D4 D3 GND RS
*.PININFO GND:B D4:B D3:B RS:B
XM3 D3 D3 GND GND sky130_fd_pr__nfet_01v8 L=1 W=2 nf=1 m=2
XM4 D4 D3 RS GND sky130_fd_pr__nfet_01v8 L=1 W=2 nf=1 m=2
XM1 D3 D3 D3 GND sky130_fd_pr__nfet_01v8 L=0.15 W=2 nf=1 m=2
XM2 D4 D4 D4 GND sky130_fd_pr__nfet_01v8 L=0.15 W=2 nf=1 m=2
.ends


* expanding   symbol:  /home/lcyvan/opamp/xschem/pmoscs.sym # of pins=4
** sym_path: /home/lcyvan/opamp/xschem/pmoscs.sym
** sch_path: /home/lcyvan/opamp/xschem/pmoscs.sch
.subckt pmoscs VDD D5 D1 D2
*.PININFO VDD:B D2:B D1:B D5:B
XM1 D1 D2 VDD VDD sky130_fd_pr__pfet_01v8 L=1 W=2 nf=1 m=2
XM5 D5 D2 VDD VDD sky130_fd_pr__pfet_01v8 L=1 W=2 nf=1 m=2
XM2 D2 D2 VDD VDD sky130_fd_pr__pfet_01v8 L=1 W=2 nf=1 m=2
XM3 VDD VDD VDD VDD sky130_fd_pr__pfet_01v8 L=1 W=2 nf=1 m=2
XM4 VDD VDD VDD VDD sky130_fd_pr__pfet_01v8 L=0.15 W=2 nf=1 m=2
XM6 D2 D2 D2 VDD sky130_fd_pr__pfet_01v8 L=0.15 W=2 nf=1 m=2
XM7 D1 D1 D1 VDD sky130_fd_pr__pfet_01v8 L=0.15 W=2 nf=1 m=2
XM8 D5 D5 D5 VDD sky130_fd_pr__pfet_01v8 L=0.15 W=2 nf=1 m=2
.ends


* expanding   symbol:  /home/lcyvan/opamp/xschem/pmosdif.sym # of pins=6
** sym_path: /home/lcyvan/opamp/xschem/pmosdif.sym
** sch_path: /home/lcyvan/opamp/xschem/pmosdif.sch
.subckt pmosdif S VDD VIN VIP D6 D7
*.PININFO S:B D6:B VDD:B D7:B VIP:I VIN:I
XM6 D6 VIN S VDD sky130_fd_pr__pfet_01v8 L=0.5 W=1 nf=1 m=4
XM7 D7 VIP S VDD sky130_fd_pr__pfet_01v8 L=0.5 W=1 nf=1 m=4
XM1 D7 D7 D7 VDD sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 m=2
XM2 D6 D6 D6 VDD sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 m=2
.ends


* expanding   symbol:  /home/lcyvan/opamp/xschem/nmoscs2.sym # of pins=3
** sym_path: /home/lcyvan/opamp/xschem/nmoscs2.sym
** sch_path: /home/lcyvan/opamp/xschem/nmoscs2.sch
.subckt nmoscs2 D8 D9 GND
*.PININFO GND:B D9:B D8:B
XM9 D9 D8 GND GND sky130_fd_pr__nfet_01v8 L=0.8 W=1 nf=1 m=4
XM8 D8 D8 GND GND sky130_fd_pr__nfet_01v8 L=0.8 W=1 nf=1 m=4
XM1 D8 D8 D8 GND sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=2
XM2 D9 D9 D9 GND sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=2
.ends

.end

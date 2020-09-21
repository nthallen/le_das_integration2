tmcbase = base.tmc

Module TMbase

TGTDIR = $(TGTNODE)/home/Demo
IGNORE = "*.o" "*.exe" "*.stackdump" Makefile
DISTRIB = services interact
IDISTRIB = doit

Demodisp : Demo.tbl Demo2.tbl Demo3.tbl
Demoalgo : Demo.tma
doit : Demo.doit

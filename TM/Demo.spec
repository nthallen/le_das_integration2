tmcbase = base.tmc

Module TMbase

TGTDIR = $(PWD)/../..
IGNORE = "*.o" "*.exe" "*.stackdump" Makefile
DISTRIB = services

Demodisp : Demo.tbl
Demoalgo : Demo.tma
doit : Demo.doit

tmcbase = base.tmc

Module TMbase

TGTDIR = $(PWD)/../..
IGNORE = "*.o" "*.exe" "*.stackdump" Makefile
DISTRIB = services

@NAME@disp : @NAME@.tbl
@NAME@algo : @NAME@.tma
doit : @NAME@.doit

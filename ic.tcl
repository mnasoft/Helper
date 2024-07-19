# source $env(TCL_HOME)/Helper/ic.tcl

package require PkgLoader 1.0

mmsg_start

package provide Helper 1.0

## * Команды [[file:../ic.tcl]]


set REZ {}
set PROCS [info commands *]

## - =pr= {lst} :: Красивая печать списка.
proc pr {lst} {
    set i 0
    foreach l $lst {
        incr i
        mmsg "$i: "
        mmsg "$l\n" }}

## - =find= {mask} :: Поиск по именам функций.
proc find {mask} {
    global PROCS
    global REZ
    set REZ {}
    foreach p $PROCS {
        if { [string match *$mask* $p] == 1} {
            lappend REZ $p }}
    pr $REZ }

## - =frez= {mask} :: Поиск по функциям.
proc frez {mask} {
    global REZ
    set rez {}
    foreach p $REZ {
        if { [string match *$mask* $p] == 1} {
            lappend rez $p }}
    pr $rez}

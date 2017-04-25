#!/bin/bash

[ $# -eq 0 ] && { echo "Faltou informar o nome do arquivo." ; exit 1 ; }
[ -f $1 ] || { echo "Arquivo $1 inexistente." ; exit 2 ;} 

sed 's/^\[............\] //' $1 | sed 's/^\[  OK  \]//' > $1.limpo

echo "Gerado ${1}.limpo"


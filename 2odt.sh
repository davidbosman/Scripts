#!/bin/bash

VAR="`date '+%Y-%m%d-'`"
NAME=$VAR"-"$1
pandoc -s $1 -o $NAME.odt


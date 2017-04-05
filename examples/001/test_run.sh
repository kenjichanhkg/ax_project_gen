#!/bin/sh
#stop when error
set -e

#echo command
set -v

#change current directory to this file
cd `dirname $0`
echo pwd = `pwd`

# build ax_gen
make --directory=../../projects/makefile

../../bin/ax_gen ws=Hello.axworkspace -gen -build -run

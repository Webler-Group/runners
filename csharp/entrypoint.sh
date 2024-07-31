#!/bin/sh

set -e

source=$3
input=$2
exectime=$1

echo "$source" > Main.cs

mcs Main.cs

echo "$input" | timeout $exectime mono Main.exe 1> out_file

head -c 2048 out_file
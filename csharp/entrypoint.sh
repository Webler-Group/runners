#!/bin/sh

set -e

source=$1
input=$2

echo "$source" > Main.cs

mcs Main.cs

echo "$input" | mono Main.exe 1> out_file

head -c 2048 out_file
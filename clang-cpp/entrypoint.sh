#!/bin/sh

set -e

source=$1
input=$2
exectime=$3

echo "$source" > main.cpp

clang++ -Werror main.cpp

echo "$input" | timeout $exectime ./a.out 1> out_file

head -c 2048 out_file


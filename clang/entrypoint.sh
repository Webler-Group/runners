#!/bin/sh

set -e

source=$3
input=$2
exectime=$1

echo "$source" > main.c

clang -Werror main.c

echo "$input" | timeout $exectime ./a.out 1> out_file

head -c 2048 out_file
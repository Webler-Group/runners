#!/bin/sh

source=$1
input=$2
runtime=$3

echo "$source" > main.clj

echo "$input" | timeout $runtime clojure main.clj 1> out_file 2> err_file

head -c 2048 out_file


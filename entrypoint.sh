#!/bin/sh

source=$1
input=$2

echo "$source" > main.clj

echo "$input" | clojure main.clj 1> out_file 2> err_file

head -c 2048 out_file


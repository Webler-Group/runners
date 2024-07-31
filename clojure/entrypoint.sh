#!/bin/sh

set -e

source=$1
input=$2
exectime=$3

echo "$source" > main.clj

echo "$input" | timeout $exectime clojure main.clj 1> out_file

head -c 2048 out_file


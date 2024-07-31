#!/bin/sh

set -e

source=$3
input=$2
exectime=$1

echo "$source" > main.clj

echo "$input" | timeout $exectime clojure main.clj 1> out_file

head -c 2048 out_file


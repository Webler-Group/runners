#!/bin/sh

source=$1
input=$2
runtime=$3

echo "$source" > main.cpp

clang++ -Werror main.cpp 2> err_file

if [ $? -ne 0 ]; then
  cat err_file >&2
  exit 1
fi

echo "$input" | timeout $runtime ./a.out 1> out_file 2> err_file

if [ $? -ne 0 ]; then
  cat err_file >&2
  exit 1
]
fi

head -c 2048 out_file


#!/bin/bash
for i in shell git jenkins docker kubernetes anisible terrafor
do
    echo "installing $i"
    mkdir $i
    touch $i/README.md
done
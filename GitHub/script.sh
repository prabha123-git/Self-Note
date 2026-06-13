#!/bin/bash
for i in shell git jenkins docker kubernetes anisible terrafor
do
    echo "installing $i"
    mkdir $i
    touch $i/README.md
done

# for i in prabha shubha mahesh deepu inith;do  mkdir $i && touch $i/hello.txt;done - (Single line )
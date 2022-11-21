#!/bin/bash

echo "Initialising release $1 ... \n"

mkdir Release/$1

for university in "HKUST-GZ", "HKUST", "SUSTech", "SYSU"
do
    mkdir Release/$1/$university
    cp -rf Src/* Release/$1/$university
    echo "Initialising release $1 for $university "
done

echo "\n Initialising release $1 finished !"

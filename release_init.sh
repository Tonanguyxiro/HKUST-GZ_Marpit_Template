#!/bin/bash

echo "Initialising release $1 ... \n"

# mkdir Release/$1

# , "HKUST", "SUSTech", "SYSU"

for university in "HKUST-GZ"
do
    mkdir Release/$1/$university
    cp -rf Src/* Release/$1/$university
    echo "Initialising release $1 for $university "
    zip -r Release/$1/$university\_Marpit_Theme.zip Release/$1/$university
    echo "Successfully packed release $1 for $university"
done

echo "\n Initialising release $1 finished !"

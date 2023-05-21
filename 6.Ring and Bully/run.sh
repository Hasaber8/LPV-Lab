#!/bin/bash

# Compile Java files
javac *.java

if [ "$1" = "-1" ]; then
    # Run java Ring
    java Ring
else
    echo "Invalid argument. Please provide -1 to run java Ring."
fi


if [ "$1" = "-2" ]; then
    # Run java Ring
    java Ring
else
    echo "Invalid argument. Please provide -1 to run java Ring."
fi


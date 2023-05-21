#!/bin/bash

# Compile Java files
javac *.java

if [ "$1" = "-1" ]; then
    # Run java Ring
    java Ring
else
    java Bully
fi
#!/bin/bash

# Compile Java files
javac *.java

if [ "$1" = "-1" ]; then
    # Run java Ring
    java Bully
else
    java Ring
fi
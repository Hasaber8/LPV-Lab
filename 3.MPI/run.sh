#!/bin/bash

export MPJ_HOME=mpj/
export PATH="$MPJ_HOME/bin:$PATH"

# Compile ParallelSum.java
javac -cp .:$MPJ_HOME/lib/mpj.jar DistributedSum.java

# Check if javac compilation was successful

if [ $? -eq 0 ]; then
    # Run ParallelSum using mpjrun.sh with 4 processes
    mpjrun.sh -np 4 DistributedSum
else
    echo "Error: Compilation failed."
fi

#!/bin/bash

if [ "$1" = "-1" ]; then
    rm -rf 2.CORBA   3.MPI  '4.Clock synchronization' 5.Token-ring  '6.Ring and Bully'
    cd 1.Client-Server-RMI/ || exit 1
    ./run.sh
elif [ "$1" = "-2" ]; then
    rm -rf 1.Client-Server-RMI 3.MPI '4.Clock synchronization' 5.Token-ring '6.Ring and Bully'
    # Change directory to 2.CORBA
    cd 2.CORBA/ || exit 1
    # Run the script in 2.CORBA
    ./run.sh
elif [ "$1" = "-3" ]; then
    rm -rf 1.Client-Server-RMI 2.CORBA '4.Clock synchronization' 5.Token-ring '6.Ring and Bully'
    cd 3.MPI/ || exit 1
    ./run.sh
elif [ "$1" = "-4" ]; then
    rm -rf 1.Client-Server-RMI 2.CORBA 3.MPI 5.Token-ring '6.Ring and Bully'
    cd 4.Clock\ synchronization/ || exit 1
    ./run.sh
elif [ "$1" = "-5" ]; then
    rm -rf 1.Client-Server-RMI 2.CORBA 3.MPI '4.Clock synchronization' '6.Ring and Bully'
    cd 5.Token-ring/ || exit 1
    ./run.sh
elif [ "$1" = "-6" ]; then
    rm -rf 1.Client-Server-RMI 2.CORBA 3.MPI '4.Clock synchronization' 5.Token-ring
    cd 6.Ring\ and\ Bully/ || exit 1
    ./run.sh
else
    echo "Invalid argument."
fi
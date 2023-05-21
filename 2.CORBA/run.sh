#!/bin/bash

# Compile IDL file
idlj -fall HelloModule.idl

# Compile Java files
javac *.java HelloModule/*.java

# Check if orbd is running and kill if necessary
pkill orbd

sleep 1

# Start orbd
orbd -ORBInitialPort 1050&

sleep 2

# Start the server
gnome-terminal --tab --title="Server" --command="bash -c 'java Server -ORBInitialPort 1050 -ORBInitialHost localhost; exec bash'"

sleep 2

# Open new terminal and run the client
gnome-terminal --tab --title="Client" --command="bash -c 'java Client -ORBInitialPort 1050 -ORBInitialHost localhost; exec bash'"

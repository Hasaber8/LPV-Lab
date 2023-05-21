#!/bin/bash

# Compile Java files
javac *.java

# if existing service kill it
pkill rmiregistry

# Generate stubs and skeletons using RMI Compiler
rmic Servant

# Start RMI registry
rmiregistry &

# Open new terminal and run the server
gnome-terminal --tab --title="Server" --command="bash -c 'java Server; exec bash'"

# Open new terminal and run the client
gnome-terminal --tab --title="Client" --command="bash -c 'java Client; exec bash'"

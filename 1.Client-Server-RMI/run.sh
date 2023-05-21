#!/bin/bash

# Compile Java files
javac *.java

# Generate stubs and skeletons using RMI Compiler
rmic Servent

# Start RMI registry
rmiregistry &

# Open new terminal and run the server
gnome-terminal --tab --title="Server" --command="bash -c 'java Server; exec bash'"

# Open new terminal and run the client
gnome-terminal --tab --title="Client" --command="bash -c 'java Client; exec bash'"

#!/bin/bash

# Compile the C++ program
g++ -o Berkely_server  Berkely_server.cpp

# Check if compilation was successful
gnome-terminal --tab --title="Server" --command="bash -c './Berkely_server; exec bash;'"

g++ -o Berkely_client  Berkely_client.cpp

gnome-terminal --tab --title="Client1" --command="bash -c './Berkely_client; exec bash'"

gnome-terminal --tab --title="Client2" --command="bash -c './Berkely_client; exec bash'"

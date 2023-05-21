#!/bin/bash

# Compile Java files
javac *.java

gnome-terminal --tab --title="Server" --command="bash -c 'java TokenServer; exec bash'"

gnome-terminal --tab --title="Server" --command="bash -c 'java TokenClient1; exec bash'"

gnome-terminal --tab --title="Server" --command="bash -c 'java TokenClient2; exec bash'"

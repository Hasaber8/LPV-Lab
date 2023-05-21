# #!/bin/bash

# # Open new terminal and run the server
# gnome-terminal --tab --title="Server" --command="bash -c 'git clone https://github.com/kevinmilner/mpj-express.git'"

# sleep 10

# export MPJ_HOME=mpj-express/
# export PATH=$MPJ_HOME/bin:$PATH

# javac -cp .:$MPJ_HOME/lib/mpj.jar ParallelSum.java

# mpjrun.sh -np 4 ParallelSum


#!/bin/bash

# Clone the repository
git clone https://github.com/kevinmilner/mpj-express.git

# Check if git clone was successful
if [ $? -eq 0 ]; then
    export MPJ_HOME=mpj-express/
    export PATH="$MPJ_HOME/bin:$PATH"

    # Compile ParallelSum.java
    javac -cp .:$MPJ_HOME/lib/mpj.jar ParallelSum.java

    # Check if javac compilation was successful
    if [ $? -eq 0 ]; then
        # Run ParallelSum using mpjrun.sh with 4 processes
        mpjrun.sh -np 4 ParallelSum
    else
        echo "Error: Compilation failed."
    fi
else
    echo "Error: Git clone failed."
fi

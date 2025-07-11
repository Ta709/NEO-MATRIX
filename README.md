## How to Create a Matrix-style Console Script

This guide provides instructions for creating a custom script that displays a "Matrix" animation on Linux.

-----

### Step 1: Download `cmatrix`

The `cmatrix` program is what creates the digital rain effect. Open your terminal and install it with this command:

```sh
sudo apt-get install cmatrix
```

-----

### Step 2: Create the Script File

You will use the **`nano`** text editor to create a new file for your script. This command will create a file named `matrix.sh` in your current directory and open it for editing.

```sh
sudo nano matrix.sh
```

-----

### Step 3: Write the Code Inside

Copy and paste the code below into the `nano` editor. This script includes a typing animation and green, bold text.

```bash
#!/bin/bash

# Clear the screen
tput clear

# Use ANSI escape codes for green and bold colors
GREEN='\033[32m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# Function to print text with a typing animation
type_text() {
    text="$1"
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep 0.05
    done
    echo
}

# The "Wake up Neo" sequence
echo -e "${GREEN}${BOLD}"
type_text "Wake up, Neo."
sleep 1
tput clear

type_text "The Matrix has you."
sleep 1
tput clear

type_text "Follow the white rabbit."
sleep 1
tput clear

type_text "Knock, knock, Neo."
sleep 1
echo -e "${NC}"
tput clear

# Start the cmatrix program
cmatrix
```

-----

### Step 4: Save the Script

To save the file in the **`nano`** editor:

1.  Press **Ctrl + X**
2.  Press **Y** to confirm you want to save
3.  Press **Enter** to save with the current file name.

-----

### Step 5: Make the Script Executable

Before you can run the script, you must give it execute permissions using the **`chmod`** command.

```sh
sudo chmod +x matrix.sh
```

-----

### Step 6: Execute the Script

Now you can run the script from your terminal.

```sh
sudo ./matrix.sh
```

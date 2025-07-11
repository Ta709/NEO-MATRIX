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

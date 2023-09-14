#!/bin/bash

#The purpose of this script is to provide a menu for users about what system information they want to check


#put while true so this piece of code stays looping (executing) so that the user can select multiple options
#from the menu without having to re-running the script everytime just to pick a different choice 
while true; do
# Display the simple menu. Put numbers to make it easier
    echo "System Information Menu:"
    echo "1. Currently logged users"
    echo "2. Your shell directory"
    echo "3. Home Directory"
    echo "4. OS name & version"
    echo "5. Current working directory"
    echo "6. Number of users logged in"
    echo "7. Hard disk information"
    echo "8. CPU information"
    echo "9. Memory information"
    echo "10. File system information"
    echo "11. Currently running processes"
    echo "12. Quit"

# Asking for user input for their choice from the menu 
read -p "Enter your choice (select 1-12):" choice

 # Process the user's choice
    case $choice in
        1)
            who
            ;;
        2)
            echo "Shell Directory: $SHELL"
            ;;
        3)
            echo "Home Directory: $HOME"
            ;;
        4)
            uname -a
            ;;
        5)
            echo "Current working directory: $(pwd)"
            ;;
        6)
            who 
            ;;
        7)
            df -h
            ;;
        8)
            lscpu
            ;;
        9)
            free -b
            ;;
        10)
            df 
            ;;
        11)
            ps aux
            ;;
        12)
            echo "closing menu!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a valid option (select 1-12)."
            ;;
    esac
done

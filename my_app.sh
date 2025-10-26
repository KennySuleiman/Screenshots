#!/bin/bash
# My personal app
# This is going to be fun

while true; do
    echo "============================="
    echo "    QUESTIONAIRE"
    echo "============================="
    echo ""
    echo "Hello World"
    # get user name
    read -r -p "What is your name? " USER_NAME
    read -r -p "Where are you from? " CITY
    read -r -p "How old are you? " AGE
    echo "Hello, $USER_NAME! You are from $CITY and you are $AGE years old"
    echo ""

    # Check if age is a valid number and not 0
    if ! [[ "$AGE" =~ ^[0-9]+$ ]] || [ "$AGE" -eq 0 ]; then
        echo "Wrong input"
        sleep 3
        echo ""
        echo "Let's try again..."
        echo ""
    # Check age with if, elif, else
    elif [ "$AGE" -lt 18 ]; then
        echo "Wait till you are old enough"
        sleep 5
        echo ""
        echo "Let's try again..."
        echo ""
    elif [ "$AGE" -ge 18 ] && [ "$AGE" -lt 100 ]; then
        echo "============================="
        echo "    BEER SELECTION MENU"
        echo "============================="
        echo "1. Guinness"
        echo "2. Corona"
        echo "3. Heineken"
        echo "4. Budweiser"
        echo "5. Stella Artois"
        echo "============================="
        read -r -p "Choose your beer (1-5): " BEER_CHOICE
        
        case $BEER_CHOICE in
            1)
                echo "Great choice! You selected Guinness"
                ;;
            2)
                echo "Great choice! You selected Corona"
                ;;
            3)
                echo "Great choice! You selected Heineken"
                ;;
            4)
                echo "Great choice! You selected Budweiser"
                ;;
            5)
                echo "Great choice! You selected Stella Artois"
                ;;
            *)
                echo "Invalid choice. Please select 1-5"
                ;;
        esac
        
        echo ""
        echo "Thank you for using our questionnaire!"
        
        # Display timestamp
        echo ""
        echo "============================="
        echo "Session completed at: $(date '+%Y-%m-%d %H:%M:%S')"
        echo "============================="
        echo ""
        echo "Restarting in 30 seconds..."
        sleep 30
        echo ""
    else
        echo "That age seems unusual. Please enter a valid age."
        sleep 3
        echo ""
    fi
done

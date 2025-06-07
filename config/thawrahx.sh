#!/bin/bash

frame_delay=0.05   # Lower delay for smoother animation
clear
# Colored output for fun and drama
green="\033[1;32m"
red="\033[1;31m"
blue="\033[1;34m"
reset="\033[0m"

# Function to animate glowing sword
animate_sword() {
    for i in {1..5}; do
        clear
        echo -e "${red}              /\\${reset}"
        echo -e "${green}             |==|${reset}"
        echo -e "${blue}             |= |${reset}"
        echo -e "${red}             |  |${reset}"
        echo -e "${green}         __ /====\\ __${reset}"
        echo -e "${blue}        |--|::::::|--|${reset}"
        echo -e "${green}        |  |::::::|  |${reset}"
        echo -e "${blue}        |  |::::::|  |${reset}"
        echo -e "${green}        |  |::::::|  |${reset}"
        echo -e "${red}        |  |::::::|  |${reset}"
        echo -e "${blue}        |__|::::::|__|${reset}"
        echo -e "${green}       /___\\::::::/___\\${reset}"
        echo -e "${blue}      (____/::::::\\____)${reset}"
        echo -e "${green}       |  ||::::||  |${reset}"
        echo -e "${blue}       |__||____||__|${reset}"
        echo -e "${red}      /___|/====\\|___\\${reset}"
        echo -e "${green}     (____/      \\____)${reset}"
        sleep 0.1
    done
}

# Function to animate the Crescent Moon glowing
animate_moon() {
    clear
    echo -e "${blue}              ☪︎${reset}"
    sleep 0.5
    clear
    echo -e "${blue}              ☽${reset}"
    sleep 0.5
}

# Function to animate Arabic calligraphy
animate_calligraphy() {
    clear
    echo -e "${green}         بِسْمِ ٱللّٰهِ${reset}"
    sleep 0.5
    clear
}

# Function for quotes from Quran/Islamic Heroes
quote_random() {
    quotes=("الْحَقُّ مِنْ رَبِّكَ" - "The Truth is from Your Lord" 
            "وَقُلْ رَبِّ زِدْنِي عِلْمًا" - "And say, My Lord, increase me in knowledge"
            "فَإِنَّ مَعَ الْعُسْرِ يُسْرًا" - "For indeed, with hardship [will be] ease"
            "الْجَنَّةُ تَحْتَ أَقْدَامِ أُمَّهَاتِكُمْ" - "Paradise lies beneath the feet of your mothers.")
    
    random_index=$(($RANDOM % ${#quotes[@]}))
    clear
    echo -e "${blue}Quote: ${quotes[$random_index]}${reset}"
    sleep 2
}

# Start animation and then repeat the process
while true; do
    animate_moon
    animate_calligraphy
    animate_sword
    quote_random
done

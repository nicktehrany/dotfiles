#!/bin/bash


BLUE=$'\033[1;34m'
RED=$'\033[1;31m'
WHITE=$'\033[1;37m'
GREEN=$'\033[1;32m'

function checkResponse(){
    if [[ "$1" == "Y" || "$1" == "y" ]]; then
        echo 0
    elif [[ "$1" == "N" || "$1" == "n" ]]; then
        echo 1
    else
        echo 2
    fi
}

function startPolybar(){
    echo "Launching Polybar"

    # Terminate already running bar instances
    killall -q polybar

    echo "---" | tee -a /tmp/polybar.log $> /dev/null
    polybar bar 2>&1 | tee -a /tmp/polybar.log & disown
    echo "${GREEN}Launched polybar! You can close this terminal now."
}

# Add this script to run on startup
if ! command -v gnome-extensions &> /dev/null; then
    if [[ "$XDG_CURRENT_DESKTOP" == *"GNOME"* ]]; then
        echo "${BLUE}Found running gnome but gnome-extensions not installed."
        printf "${WHITE}Install gnome-extensions and hidetopbar extension? (y/n): "
        read -r installGE
        response=$(checkResponse $installGE)
        if [[ "$response" == "0" ]]; then
            echo "${BLUE}Installing gnome-extensions and hidetopbar extension"
            sudo apt install gnome-shell-extensions
            gnome-extensions install hidetopbar@mathieu.bidon.ca
            gnome-extensions enable hidetopbar@mathieu.bidon.ca
            startPolybar
        elif [[ "$response" == "1" ]]; then
            echo "${BLUE}Not installing gnome-extensions, cannot run polybar without hiding top bar. Exiting!"
            exit 0
        else
            echo "${RED}Error: Invalid Response"
            exit 1
        fi
    else
        echo "${BLUE}Found not running gnome."
        printf "${WHITE}Still start polybar? (y/n): "
        read -r startPoly
        response=$(checkResponse $startPoly)
        if [[ "$response" == "0" ]]; then
            startPolybar
        elif [[ "$response" == "1" ]];then
            echo "Not Starting polybar. Exiting!"
            exit 0
        else
            echo "${RED}Error: Invalid Response"
            exit 1
        fi
    fi
else
    if [[ $(gnome-extensions list | grep 'hidetopbar') == *"hidetopbar@mathieu.bidon.ca"* ]]; then
        echo "${BLUE}Found hidetopbar extension. Enabling it"
        gnome-extensions enable hidetopbar@mathieu.bidon.ca
        startPolybar
    else
        printf "hidetopbar extension not installed. Install it? (y/n): "
        read -r installHTB
        response=$(checkResponse $installHTB)
        if [[ "$response" == "0" ]]; then
            echo "${BLUE}Installing hidetopbar extension"
            gnome-extensions install hidetopbar@mathieu.bidon.ca
            startPolybar
        elif [[ "$response" == "1" ]]; then
            printf "Not installing hidetopbar extension, still start polybar? (y/n): "
            read -r startPoly
            response=$(checkResponse $startPoly)
            if [[ "$response" == "0" ]]; then
                startPolybar
            elif [[ "$response" == "1" ]];then
                echo "Not Starting polybar. Exiting!"
                exit 0
            else
                echo "${RED}Error: Invalid Response"
                exit 1
            fi
        else
            echo "${RED}Error: Invalid Response"
            exit 1
        fi
    fi
fi

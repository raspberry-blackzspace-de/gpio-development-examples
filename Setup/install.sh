#!/bin/bash
# install.sh



# ANSI-Farbcodes
RED="\033[31m"
YELLOW="\033[33m"



# APT-GET VARIABLES
export u="sudo apt-get update"
export ug="sudo apt-get upgrade -y"
export i="sudo apt-get install -y "
export ia="sudo apt-get install "
export r="sudo apt-get remove -y "
export rp="sudo apt-get remove -y $pkg --purge"
export dug="sudo apt-get dist-upgrade -y"
export ar="sudo apt-get autoremove -y"
export ac="sudo apt-get autoclean"
# END APT-GET VARIABLES

# GIT VARIABLES
export gcl="git clone "

# RASPBERRY PI VARIABLES
export rpiu="sudo rpi-update"
export rpieo="sudo rpi-eeprom-update"
# END RASPBERRY PI VARIABLES

# SHORTCUTZ
export s="sleep "


# Directorys
LIBARYS="/usr/share/libarys"
GPIO_LIBARYS="/usr/share/libarys/gpio"
WIRINGPI_LIBRARYS="/usr/share/libarys/wiringpi"

# Dependencies
packages=("curl wget git make cmake software-properties-common python3-dev python3-pip python3-venv build-essential pkg-config automake autoconf clang libc6-dev gcc")

# Function to check if a package is installed
is_installed() {
    dpkg -s "$1" >/dev/null 2>&1
    return $?
}


install_dependencies() {
    echo -e "${YELLOW}Installing dependencies...${NC}"
    $u
    $ug
    $dug
    $ar
    $ac

    $i 

}

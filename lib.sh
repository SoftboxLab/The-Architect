#!/usr/bin/env bash

###
# VSCode Settings and Extensions Synchronizer
# @author Thais Ribeiro https://github.com/thaisribeiro/DotCode
###

# Colors
ESC_SEQ="\x1b["
RESET=$ESC_SEQ"39;49;00m"
PINK=$ESC_SEQ"35;01m"
GREEN=$ESC_SEQ"32;01m"
YELLOW=$ESC_SEQ"33;01m"
RED=$ESC_SEQ"31;01m"

function ok() {
    echo -e "$GREEN[ok]$RESET $1"
}

function bot() {
    echo -e "\n$GREENᕦ( ͡° ͜ʖ ͡°)ᕤ$RESET - $1"
}

function running() {
    echo -en "$YELLOW ⇒ $RESET $1: "
}

function action() {
    echo -e "\n$YELLOW[action]:$RESET\n ⇒ $1..."
}

function warn() {
    echo -e "$YELLOW[warning]$RESET $1"
}

function error() {
    echo -e "$RED[error]$RESET $1"
}

function awesome_header() {
    echo -en "\n$PINK ██████╗  ██████╗ ████████╗ ██████╗ ██████╗ ██████╗ ███████╗ $RESET"
    echo -en "\n$PINK ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██╔═══██╗██╔══██╗██╔════╝ $RESET"
    echo -en "\n$PINK ██║  ██║██║   ██║   ██║   ██║     ██║   ██║██║  ██║█████╗   $RESET"
    echo -en "\n$PINK ██║  ██║██║   ██║   ██║   ██║     ██║   ██║██║  ██║██╔══╝   $RESET"
    echo -en "\n$PINK ██████╔╝╚██████╔╝   ██║   ╚██████╗╚██████╔╝██████╔╝███████╗ $RESET"
    echo -en "\n$PINK ╚═════╝  ╚═════╝    ╚═╝    ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝ $RESET"
    echo -en "\n"
}
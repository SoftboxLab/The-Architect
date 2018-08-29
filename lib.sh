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
    echo -e "$GREEN[ok] ᕕ( ᐛ )ᕗ$RESET $1"
}

function bot() {
    echo -e "\n$GREEN(~˘▾˘)~$RESET - $1"
}

function running() {
    echo -en "$YELLOW ⇒ $RESET $1: "
}

function action() {
    echo -e "\n$YELLOW[action]:$RESET\n ⇒ $1..."
}

function warn() {
    echo -e "$YELLOW[warning] ⚆ _ ⚆$RESET $1"
}

function error() {
    echo -e "$RED[error] ᕙ(⇀‸↼‶)ᕗ$RESET $1"
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

function footer() {

               echo -en "\n$PINK It's time to say goodbye! It's time to say goodbye! $RESET"
            echo -en "\n$PINK ___              |\            .---.             _ $RESET"
           echo -en "\n$PINK ( o )            |'_\           \ V /            | | $RESET"
           echo -en "\n$PINK _| |_           _| |_           _| |_           _| |_ $RESET"
         echo -en "\n$PINK .`_____`.       .`_____`.       .`_____`.       .`_____`. $RESET"
       echo -en "\n$PINK |\ /     \ /|   |\ /     \ /|   |\ /     \ /|   |\ /     \ /| $RESET"
       echo -en "\n$PINK |||  @ @  |||   |||  9 9  |||   |||  6 6  |||   |||  o o  ||| $RESET"
       echo -en "\n$PINK \_\   =   /_/   \_\   -   /_/   \_\   o   /_/   \_\  ._.  /_/ $RESET"
        echo -en "\n$PINK .-'-----'-.     .-'-----'-.     .-'-----'-.     .-'-----'-. $RESET"
       echo -en "\n$PINK (_   ___   _)   (_   ___   _)   (_   ___   _)   (_   ___   _) $RESET"
         echo -en "\n$PINK | |___| |       | |___| |       | |___| |       | |___| | $RESET"
         echo -en "\n$PINK |       |       |       |       |       |       |       | $RESET"
         echo -en "\n$PINK (___|___)       (___|___)       (___|___)       (___|___) $RESET"
         echo -en "\n"
}
#!/usr/bin/env bash
source ./lib.sh

#####
# Introduction
#####

awesome_header

bot "Instalando extensões de código do Visual Studio e config."

code -v > /dev/null
if [[ $? -eq 0 ]];then
    read -r -p "Ready to install VSCode extensions? I swear it's quick! [y|N] " configresponse
    if [[ $configresponse =~ ^(y|yes|Y) ]];then
        ok "We're installing, get some coffee ( ͡~ ͜ʖ ͡°)"
        code --install-extension formulahendry.auto-close-tag
        code --install-extension formulahendry.auto-rename-tag
        code --install-extension msjsdiag.debugger-for-chrome
        code --install-extension EditorConfig.EditorConfig
        code --install-extension spoonscen.es6-mocha-snippets
        code --install-extension donjayamanne.githistory
        code --install-extension xabikos.JavaScriptSnippets
        code --install-extension ritwickdey.LiveServer
        code --install-extension PKief.material-icon-theme
        code --install-extension EQuimper.react-native-react-redux
        code --install-extension humao.rest-client
        code --install-extension ftsamoyed.theme-pink-cat-boo
        code --install-extension octref.vetur
        code --install-extension pranaygp.vscode-css-peek
        code --install-extension PeterJausovec.vscode-docker
        code --install-extension dbaeumer.vscode-eslint
        code --install-extension wix.vscode-import-cost
        code --install-extension sburg.vscode-javascript-booster
        code --install-extension Orta.vscode-jest
        code --install-extension vsmobile.vscode-react-native
        code --install-extension chenxsan.vscode-standardjs
        code --install-extension ms-vsliveshare.vsliveshare

        ok "I said it would be fast! Now just restart the VSCode."
    else
        ok "Extensions can not be installed, but no problem, we'll be waiting for you later!";
    fi

    read -r -p "Are we going to install the settings? [y|N] " configresponse
    if [[ $configresponse =~ ^(y|yes|Y) ]];then
        read -r -p "Next, so you do not miss anything you want to back up? [Y|n] " backupresponse
        if [[ $backupresponse =~ ^(n|no|N) ]];then
            ok "Settings can not be installed, but no problem, we'll be waiting for you later!"
        else
            cp $HOME/.config/Code/User/settings.json $HOME/.config/Code/User/settings.backup.json
            ok "You have not lost anything, the previous settings are saved in: $HOME/.config/Code/User/settings.backup.json"
        fi
        cp ./settings.json $HOME/.config/Code/User/settings.json

        ok "Wow, your settings have been saved now just restart the VSCode!"
    else
        ok "Ok, nothing to install settings, I get it!";
    fi
else
    error "Oh sorry, it seems that the 'code' command is not accessible"
    error "Make sure your Visual Studio Code is installed!"
    error "Any questions, read here: https://code.visualstudio.com/docs/setup/linux"
fi
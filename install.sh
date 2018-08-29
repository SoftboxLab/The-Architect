#!/usr/bin/env bash
source ./lib.sh

#####
# Introduction
#####

awesome_header

bot "From that moment you will see the magic happening!"

code -v > /dev/null
if [[ $? -eq 0 ]];then
    read -r -p "Ready to install VSCode extensions? I swear it's quick! [y|N] " configresponse
    if [[ $configresponse =~ ^(y|yes|Y) ]];then
        ok "We're installing, get some coffee c[_]"
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
        code --install-extension kortina.run-in-terminal


        ok "I said it would be fast! Now just restart the VSCode."
    else
        ok "Extensions can not be installed, but no problem, we'll be waiting for you later!";
    fi

    read -r -p "Are we going to install the settings? [y|n] " configresponse
    if [[ $configresponse =~ ^(y|yes|Y) ]];then   
        read -r -p "And then my paladin wants to choose the MAC? [y|n]" macresponse
         if [[ $macresponse =~ ^(y|yes|Y) ]];then
            read -r -p "Next, so you do not miss anything you want to back up? [y|n] " backupresponse
            if [[ $backupresponse =~ ^(n|no|N) ]];then
                ok "Settings can not be installed, but no problem, we'll be waiting for you later!"
            else
                cp $HOME/Library/Application Support/Code/User/settings.json $HOME/Library/Application Support/Code/User/settings.backup.json
                ok "You have not lost anything, the previous settings are saved in: $HOME/Library/Application Support/Code/User/settings.bakup.json"
            fi
            cp ./settings.json $HOME/Library/Application Support/Code/User/settings.json

            ok "Wow, your settings have been saved now just restart the VSCode!"
         else
            read -r -p "Next, so you do not miss anything you want to back up? [Y|n] " backupresponse
            if [[ $backupresponse =~ ^(n|no|N) ]];then
                ok "Settings can not be installed, but no problem, we'll be waiting for you later!"
            else
                if [ -e $HOME/.config/Code/User/settings.json ];then
                    cp $HOME/.config/Code/User/settings.json $HOME/.config/Code/User/settings.backup.json
                fi
                if [ ! -e $HOME/.config/Code/User/settings.json ];then
                    cp ./VSCode/settings.json $HOME/.config/Code/User/settings.json
                fi
                if [ -e $HOME/.config/Code/User/keybindings.json ];then
                    sed -i '$ d' $HOME/.config/Code/User/keybindings.json
                    echo ',{"key": "ctrl+alt+f","command": "runInTerminal.run", "args": {"cmd": "node_modules/.bin/eslint --fix ${relativeFile}", "match": ".*"}}]' >>  $HOME/.config/Code/User/keybindings.json
                fi
                if [ ! -e $HOME/.config/Code/User/keybindings.json ];then
                    cp ./VSCode/keybindings.json $HOME/.config/Code/User/keybindings.json
                fi
            fi
         fi
    else
        ok "Ok, nothing to install settings, I get it!";
    fi
else
    error "Oh sorry, it seems that the 'code' command is not accessible"
    error "Make sure your Visual Studio Code is installed!"
    error "Any questions, read here: https://code.visualstudio.com/docs/setup/linux"
fi

footer
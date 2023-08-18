#!/bin/bash
#Brian Luu
#Pasadena City College
#7/7/2023

FILE=/usr/bin/git
if test -f "$FILE"; then
    echo "$FILE exists."
    brew upgrade git
else
    echo "$FILE doesn't exist."
    brew install git
fi

FILE=/usr/local/bin/cmake
if test -f "$FILE"; then
    echo "$FILE exists."
    brew upgrade cmake
else
    echo "$FILE doesn't exist."
    brew install git
fi

FILE=/usr/bin/clang
if test -f "$FILE"; then
    echo "$FILE exists."
    current_clang_ver=$(eval clang -dumpversion)
    recommended_clang_ver="14.0.3"
    echo $recommended_clang_ver
    echo $current_clang_ver

    if [[ "$current_clang_ver" == "$recommended_clang_ver" ]]; then
        echo "latest version is installed."
    else
        echo "installing latest version"
        sudo rm -rf /Library/Developer/CommandLineTools
        xcode-select --install
    fi
else
    echo "$FILE doesn't exist. Installing clang"
    xcode-select --install
fi

brew install --cask visual-studio-code

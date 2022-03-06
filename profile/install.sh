#!/bin/bash
# Author : Rhobin Jay Faigones <rhobinjayfaigones@gmail.com>
# Purpose: Setup bash profile
# ==========================================================

# Prepare downloader tool
web_downloader=""
if   [ $(command -v curl) ]; then web_downloader="curl";
elif [ $(command -v wget) ]; then web_downloader="wget";
else echo "curl and wget are not found" && exit 1;
fi

# APPLY BASH INITIAL DEFINITIONS
if [ -f ~/.bashrc ]; then
    # for linux
    $web_downloader https://raw.githubusercontent.com/rhobinjay/setups/master/profile/.bash_init >> ~/.bashrc
else
    # for mac
    $web_downloader -o ~/.bash_profile https://raw.githubusercontent.com/rhobinjay/setups/master/profile/.bash_init

# APPLY PROFILE
$web_downloader https://raw.githubusercontent.com/rhobinjay/setups/master/profile/.bash_profile >> ~/.bash_profile
$web_downloader https://raw.githubusercontent.com/rhobinjay/setups/master/profile/.bash_aliases >> ~/.bash_aliases

source ~/.bash_aliases
repro

echo "Done"

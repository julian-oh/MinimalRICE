#!/bin/bash
stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE= # Infinite history.
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

export PATH="$HOME/.scripts:$PATH"
export EDITOR="vim"
export VISUAL="vim"
export BROWSER="surf"
export TERMINAL="st"
export FILE="vifm"

# Script-related Variables
BOOKS_DIR="$HOME/Documents/Books"

[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc" # Load shortcut aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
[ -f "$HOME/.config/ytdlrc" ] && source "$HOME/.config/ytdlrc"


echo -e "$(tput bold)$(tput setaf 8)Things to do, if bored: \n\n* bookselect(Mod + B), learn vim, read JoJolion\n";
echo -e "--- \n"
echo -e "$(cat $(shuf -e "$HOME/.config/tips/*" -n 1))\n"
echo -e "--- \n\n"
echo -e "$(cat $HOME/.reminders)\n\n\n"

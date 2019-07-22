
# So the terminal will always set $HOME as the default location
cd ~
[ -f "$HOME/.xprofile" ] && . ~/.xprofile

exec dwm

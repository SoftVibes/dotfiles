#Powerline

export PATH="$PATH:/home/hilogen/.local/bin/"
export LC_ALL=en_US.UTF-8
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
source /home/hilogen/.local/lib/python3.8/site-packages/powerline/bindings/bash/powerline.sh

# Startup Code

clear
date
echo ""
neofetch

# Git functionality

function push {
    git add .
    if [ -z $1 ]
    then
        git commit -m "Woops! Forgot to add the comment"
    else
        git commit -m "$1"
    fi
    git push -u origin main
}

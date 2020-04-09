#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Set up symbolic links
UNAME_REL=$(uname -r)
if [[ "$UNAME_REL" == *"Microsoft"* ]]; then
    source $DIR/wsl.sh
else
    echo "Skipping WSL script items"
fi

echo "Downloading git-completion"
wget -O ~/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/comp
letion/git-completion.bash

echo "Downloading git-prompt"
wget -O ~/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

echo "Copying .gitconfig"
cp $DIR/../gitconfig ~/.gitconfig

echo "Copying mybash"
cp $DIR/../mybash ~/.mybash

cat << EOF > ~/.bashrc
if [ -f ~/.mybash ]; then
    . ~/.mybash
fi
EOF
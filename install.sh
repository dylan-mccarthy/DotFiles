#!/bin/sh

zshrc() {
    echo "cloning zsh-autosuggestions"             
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    echo "Import zshrc"
    cat .zshrc > $HOME/.zshrc
}

zshrc
#!/bin/sh

zshrc() {
    echo "cloning zsh-autosuggestions"             
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    echo "clone powerlevel10k"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
    echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>.zshrc
    echo "Import zshrc"
    cat .zshrc > $HOME/.zshrc
}

zshrc
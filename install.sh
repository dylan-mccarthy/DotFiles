#!/usr/bin/env bash
set -e

# Install Oh My Zsh if missing
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh…"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Symlink config
echo "Linking .zshrc"
ln -sf "$PWD/.zshrc" "$HOME/.zshrc"

# Symlink custom themes/plugins
mkdir -p "$HOME/.oh-my-zsh/custom"
ln -sf "$PWD/oh-my-zsh-custom/"* "$HOME/.oh-my-zsh/custom/"

echo "Done!"

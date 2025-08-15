#!/bin/bash

# Stop on errors
# set -e

echo "=== Installing Oh My Zsh ==="
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "=== Installing Zsh Plugins ==="
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "=== Installing chezmoi ==="
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply git@github.com:josefngo/dotfiles.git

echo "=== Setting Zsh as Default Shell ==="
chsh -s $(which zsh)

echo "=== Cloning powerlevel10k ==="
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

echo "=== Setup Complete ==="
echo "=== Restart terminal or source ~/.zshrc==="


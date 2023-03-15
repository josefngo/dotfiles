# dotfiles
[Guide](https://www.atlassian.com/git/tutorials/dotfiles)

## From scratch
git init --bare $HOME/.cfg

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

config config --local status.showUntrackedFiles no

echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc

## Installing on a new system

Add the following to the .zshrc
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

echo ".cfg" >> .gitignore

git clone --bare <git-repo-url> $HOME/.cfg

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

config checkout

The last step might fail. Remove or backup the conflicting files.

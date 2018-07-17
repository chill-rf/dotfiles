#!/bin/sh

# neovim
ln -sf ~/dotfiles/nvim ~/.config/nvim
# vim
ln -sf ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/gvimrc ~/.gvimrc
# zsh
<<<<<<< HEAD
# ln -s ~/dotfiles/zshrc ~/.zshrc

#curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
=======
ln -s ~/dotfiles/zshrc ~/.zshrc
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh

# fish
>>>>>>> 114f2d1d07891eff4260881df26ba6db759e96c9

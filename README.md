# DotFiles

My tmux and vim config files

#TMUX

For headless installations comment out tmux-open line in tmux.conf


## Install tpm (tmux package manager)

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
<leader key>+I - to install packages


## Install Vundle

  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Launch vim and run `:PluginInstall`

# Installing ZSH on Ubuntu
  
sudo apt install zsh

    
## ZSH Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

## spaceship theme

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" 

## Installing ASDF

https://asdf-vm.com/#/core-manage-asdf

## oh-my-zsh chsh: option requires an argument -- 's'

    
## chsh: PAM authentication failed on Ubuntu 12.04     

    chsh $USER -s $(which zsh);

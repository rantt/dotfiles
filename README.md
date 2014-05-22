# DotFiles

My tmux and vim config files


## Install Powerline

git clone https://github.com/Lokaltog/powerline ~/.powerline


# Installing ZSH on Ubuntu

    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
    
    
## oh-my-zsh chsh: option requires an argument -- 's'

    sudo apt-get install zsh
    
## chsh: PAM authentication failed on Ubuntu 12.04     

    chsh $USER -s $(which zsh);

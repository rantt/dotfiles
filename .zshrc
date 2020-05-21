# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
# ZSH_THEME="dieter"
# ZSH_THEME="bullet-train"
# ZSH_THEME="mh"
# ZSH_THEME="node"
# ZSH_THEME="dogenpunk"
# ZSH_THEME="af-magic"
# ZSH_THEME="gruvbox"

# ZSH_THEME="dieter"
ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ADD_NEWLINE="true"
SPACESHIP_CHAR_SYMBOL=" \uf0e7"
SPACESHIP_CHAR_PREFIX="\uf296"
SPACESHIP_CHAR_SUFFIX=(" ")
SPACESHIP_CHAR_COLOR_SUCCESS="yellow"
SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER"
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"
SPACESHIP_USER_SHOW="true"

alias vi="nvim"
alias nv="nvim"
export EDITOR='nvim'

export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

alias lc='colorls -lA --sd'


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew npm tmux node osx web-search zsh-autosuggestions )

source $ZSH/oh-my-zsh.sh
# source $ZSH/tools/antigen.zsh


# antigen bundle zsh-users/zsh-autosuggestions

# Customize to your needs...

export ASDF_DIR=$(brew --prefix asdf)

export PATH=$HOME/.asdf/shims:/usr/local/bin:/usr/local/sbin:/Applications/Postgres.app/Contents/MacOS/bin:/usr/local/heroku/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/npm/bin:/usr/local/mysql/bin:/Users/dave/source/LightTable:/Applications/Firefox.app/Contents/MacOS:/Users/dave/code/scripts/phone:/Users/dave/code/scripts/datatel_patch_report:/Users/dave/Library/Python/3.7/bin:/usr/local/opt/coreutils/libexec/gnubin:/Users/dave/code/fontforge:/usr/X11/bin:/Users/dave/code/scripts/colleague_connector/bin:/Users/dave/code/webapi_rb:/Users/dave/code/scripts/colleague_scripts:/Users/dave/code/ad_user

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

#Load rbenv shims
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#Shortcuts
alias c="~/code"
alias p="~/code/current_projects"
alias g="~/gamedev"
# alias cg="~/gamedev/compos/ludumdare/WhenSnowmenAttack"
alias cg="/Users/dave/gamedev/compos/ludumdare/LD35"
# alias n="~/Dropbox/code/notes"
alias pryr="pry -r ./config/environment -r rails/console/app -r rails/console/helpers"
alias dcb="docker-compose build"
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias dcud="docker-compose up -d"
alias dce="docker-compose exec app /bin/bash"

alias drm="docker rm -f $(docker ps -a -q)" 
alias drmi="docker rmi -f $(docker images -q)"


### Added by the Heroku Toolbelt
#export PATH="/usr/local/heroku/bin:$PATH"
# export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/etc/Caskroom"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
# eval "$(chef shell-init zsh)"

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

# export DOCKER_TLS_VERIFY="1"
# export DOCKER_HOST="tcp://192.168.99.100:2376"
# export DOCKER_CERT_PATH="/Users/dave/.docker/machine/machines/default"
# export DOCKER_MACHINE_NAME="default"
# # Run this command to configure your shell:
# eval $(docker-machine env default)

# source ~/.iterm2_shell_integration.`basename $SHELL`
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 

. `brew --prefix`/etc/profile.d/z.sh
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

alias pcat='pygmentize -f terminal256 -O style=native -g'


alias ll='colorls --dark --sort-dirs --report'
alias lc='colorls --tree --dark'
alias cfz='vi ~/.zshrc'
alias cfv='vi ~/.vimrc'
alias sz='source ~/.zshrc'


gam() { "/Users/dave/bin/gam/gam" "$@" ; }

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


fo() {
  local out file key
  IFS=$'\n' out=("$(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e)")
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    [ "$key" = ctrl-o ] && open "$file" || ${EDITOR:-vim} "$file"
  fi
}

# using ripgrep combined with preview
# find-in-file - usage: fif <searchTerm>
fif() {
  if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
  rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"
}

# fkill - kill processes - list only the ones you can kill. Modified the earlier script.
fkill() {
    local pid
    if [ "$UID" != "0" ]; then
        pid=$(ps -f -u $UID | sed 1d | fzf -m | awk '{print $2}')
    else
        pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')
    fi

    if [ "x$pid" != "x" ]
    then
        echo $pid | xargs kill -${1:-9}
    fi
}

#Sudo
function add_sudo() {
  BUFFER="sudo "$BUFFER
  zle end-of-line
}
zle -N add_sudo
bindkey "^s" add_sudo

# Home - Navigates to the current root workspace
function git_root() {
  BUFFER="cd $(git rev-parse --show-toplevel || echo ".")"
  zle accept-line
}
zle -N git_root
bindkey "^h" git_root


# LS
	function ctrl_l() {
		BUFFER="ls"
		zle accept-line
	}
	zle -N ctrl_l
	bindkey "^l" ctrl_l

  # up
	function up_widget() {
		BUFFER="cd .."
		zle accept-line
	}
	zle -N up_widget
	bindkey "^k" up_widget



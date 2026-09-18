#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#######################################################
# SOURCED ALIAS'S AND SCRIPTS BY zachbrowne.me
#######################################################
if [ -f /usr/bin/fastfetch ]; then
  fastfetch
fi

if [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

## My Customs Environemtns
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less
export PATH="$PATH:$HOME/installs/zig:$HOME/installs/Odin:$HOME/installs/zls/zig-out/bin:$HOME/installs/ols/bin"

# Alias
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias dotfiles='cd $HOME/workspace/dotfiles/'
alias home-server='wezterm cli spawn --domain-name home-server'
alias odin-install='cd $HOME/installs/Odin'

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

export STARSHIP_CONFIG=$HOME/.config/starship.toml
eval "$(starship init bash)"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

. "$HOME/.local/share/../bin/env"

# opencode
export PATH=$HOME/.opencode/bin:$PATH:$HOME/.config/emacs/bin:$HOME/installs/nnd:$HOME/go/bin:$HOME/.cargo/bin

# Turso
export PATH="$PATH:$HOME/.turso"

# Pi
export PATH=":$HOME/.pi/agent/bin:$PATH"

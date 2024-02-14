# user-setting of alias

# $(COMMAND) is an expansion of a command COMMAND
# "command -v foobar" returns the filepath where "foobar" is located (if exists)


alias ls="ls --color=auto"

alias nn="nvim"
alias s='nn ~/.zshrc'
alias sa='nn ~/dotfiles/alias.zsh'
alias ss='source ~/.zshrc'

# load alias commands
source ~/dotfiles/alias.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [[ $(command -v starship) ]]; then
    eval "$(starship init zsh)"
fi	

export PATH=$HOME/.progate/bin:$PATH
export PATH=$HOME/.nodenv/bin:$PATH
if  [[ $(command -v nodenv) ]]; then
    eval "$(nodenv init -)"
fi

zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

export PATH=$HOME/.local/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=/usr/local/original_commands:$PATH
export PATH="$HOME/linuxbrew/bin:$PATH"
export MANPATH="$HOME/linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/linuxbrew/share/info:$INFOPATH"
export LD_LIBRARY_PATH="$HOME/linuxbrew/lib:$LD_LIBRARY_PATH"
export PATH=/usr/local/texlive/2022/bin/x86_64-linux:$PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:~/go/bin
export PATH=$PATH:/usr/local/bin/nvim-linux64/bin

# completion settings
autoload -U compinit
compinit -i



autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /home/marlowe/go/bin/gocomplete go
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

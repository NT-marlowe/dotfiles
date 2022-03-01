# user-setting of alias

# $(COMMAND) is an expansion of a command COMMAND
# "command -v foobar" returns the filepath where "foobar" is located (if exists)
if [[ $(command -v exa) ]]; then
    alias e='exa '
    alias l=e
    alias ls=e
    alias ea='exa -a '
    alias la=ea
    alias ee='exa -aal '
    alias ll=ee
    alias et='exa -T -L 3 -a -I "node_modules|.git|.cache" '
    alias lt=et
    alias eta='exa -T -a -I "node_modules|.git|.cache" --color=always  | less -r'
    alias lta=eta
fi

if [[ $(command -v batcat) ]]; then
    alias cat='batcat'
fi

alias ls="ls --color=auto"

alias vi="nvim"



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"

export PATH=$HOME/.progate/bin:$PATH
export PATH=$HOME/.nodenv/bin:$PATH
eval "$(nodenv init -)"

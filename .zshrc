# user-setting of alias

# $(COMMAND) is an expansion of a command COMMAND
# "command -v foobar" returns the filepath where "foobar" is located (if exists)
if [[ $(command -v exa) ]]; then
    alias e='exa '
    alias l=e
    alias ls=e
    alias ea='exa -a' 
    alias la=ea
    alias ee='exa -aal '
    alias ll='exa -l'
    alias lla=ee
    alias et='exa -T -L 3 -a -I "node_modules|.git|.cache" '
    alias lt=et
    alias eta='exa -T -a -I "node_modules|.git|.cache" --color=always  | less -r'
    alias lta=eta
fi

if [[ $(command -v batcat) ]]; then
    alias cat='batcat'
fi

if [[ $(command -v bat) ]]; then
    alias cat='bat'
fi

if [[ $(command -v xsel) ]]; then
    alias pbcopy='xsel --clipboard --input'
fi

alias ls="ls --color=auto"

alias vi="nvim"



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

export PATH=$HOME/.local/bin:$PATH
export GOOGLE_APPLICATION_CREDENTIALS="/home/marlowe/Workspace/100program/receipt-nutrient-management/test_ocr/groovy-reducer-342714-72e157dbb95c.json"
export PATH="$HOME/.cargo/bin:$PATH"

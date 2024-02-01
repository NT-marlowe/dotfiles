EDITOR='nvim'
alias s="$EDITOR ~/.zshrc"
alias ss='source ~/.zshrc'

if [[ $(command -v xsel) ]]; then
    alias pbcopy='xsel --clipboard --input'
fi

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

alias brr='sudo systemctl restart bluetooth.service'

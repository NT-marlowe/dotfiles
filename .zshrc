# user-setting of alias

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
alias ls="ls --color=auto"

alias vi="nvim"


eval "$(starship init zsh)"

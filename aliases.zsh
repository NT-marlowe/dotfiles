export EDITOR='nvim'
alias s="$EDITOR ~/.zshrc"
alias ss='source ~/.zshrc'
alias sc="$EDITOR ~/.ssh/config"
alias sa='$EDITOR ~/dotfiles/aliases.zsh'


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

function ghq-fzf() {
  local src=$(ghq list | fzf --preview "ls -laTp $(ghq root)/{} | tail -n+4 | awk '{print \$9\"/\"\$6\"/\"\$7 \" \" \$10}'")
  if [ -n "$src" ]; then
    BUFFER="cd $(ghq root)/$src"
    zle accept-line
  fi
  zle celar-screen
}
zle -N ghq-fzf
bindkey '^]' ghq-fzf


function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}


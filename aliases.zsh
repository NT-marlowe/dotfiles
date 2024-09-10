EDITOR='nvim' 
alias s="$EDITOR ~/.zshrc"
alias ss='source ~/.zshrc'
alias sc='$EDITOR ~/.ssh/config'

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


alias dropcheck='sudo ~/Documents/showNet/scripts/dropcheck.sh'
function change_vlan() {
    local vlan=$1
    local interface=$2
    old_vlan=$(ifconfig | grep vlan: | cut -c 8- | sed 's/parent.*//')
    if [ -n "$old_vlan" ]; then
        networksetup -deleteVLAN vlan0 $interface $old_vlan
    fi
    read -p "vlan ID:" vlan
    if [ $vlan = 0 ]; then
        exit $status
    fi
    networksetup -createVLAN vlan0 $interface $vlan
}

function delete_subIF() {
    local vlan=$1
    local interface=$2

    networksetup -deleteVLAN vlan0 $interface $vlan
}

function make_subIF() {
    local vlan=$1
    local interface=$2

    networksetup -createVLAN vlan0 $interface $vlan
}

alias cs='cd ~/Documents/showNet/scripts/'


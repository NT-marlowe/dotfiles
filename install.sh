#!/usr/bin/env zsh

set -ue

function main() {
    local current_dir
    current_dir=$(dirname "${BASH_SOURCE[0]:-$0}")    
    
    echo ${current_dir}
}

main "$@"

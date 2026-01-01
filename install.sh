#!/bin/zsh
set -e

DOT="$HOME/dev/rocket/raiton-dotfiles"

link () {
    local src="$1"
    local dst="$2"

    if [ -e "$dst" ] || [ -L "$dst" ]; then
        rm -f "$dst"
    fi

    ln -s "$src" "$dst"
    echo "linked: $dst -> $src"
}

# zsh
link "$DOT/.zshrc"    "$HOME/.zshrc"
link "$DOT/.p10k.zsh" "$HOME/.p10k.zsh"

# vim
link "$DOT/.vimrc"    "$HOME/.vimrc"

# mise
mkdir -p "$HOME/.config/mise"
link "$DOT/config/mise" "$HOME/.config/mise"
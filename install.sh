#!/bin/zsh
set -e

DOT="$HOME/dev/rocket/raiton-dotfiles"

link () {
    local src="$1"
    local dst="$2"

    if [ -L "$dst" ]; then
        rm "$dst"
    elif [ -e "$dst" ]; then
        mv "$dst" "$dst.bak.$(date +%s)"
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
link "$DOT/config/mise/config.toml" "$HOME/.config/mise/config.toml"
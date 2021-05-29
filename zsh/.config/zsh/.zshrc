#!/bin/zsh

if [ -z "$PROFILE_LOADED" ]; then
    source "$HOME/.config/shell/profile"
fi

if [ -r "$XDG_CONFIG_HOME/shell/aliases" ]; then
    source "$XDG_CONFIG_HOME/shell/aliases"
fi

ZSH_THEME="robbyrussell"

if [ $(tput colors) != "256" ]; then
  ZSH_THEME="minimal"
fi

CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"

[ -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ] ||
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
[ -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ] ||
  git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source "$ZSH/oh-my-zsh.sh"

fastfetch

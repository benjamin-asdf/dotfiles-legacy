#!/usr/bin/env sh
# Profile file. Runs on login.

# Adds `~/.local/bin/` and all subdirectories to $PATH
PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
PATH="$PATH:$HOME/.dotnet/tools"
export PATH

export ALTERNATE_EDITOR="vim"
export EDITOR="emacsclient -t"
export VISUAL="emacsclient -a emacs"

# zsh
export ZDOTDIR="$HOME/.config/zsh/"

# idlegame
export COSDIR="c:/ClashOfStreamers"
export IDLEGAMEDIR="$COSDIR/IdleGame"

# If we are running bash, source bashrc
[ -n "$BASH_VERSION" ] && [ -f ~/.bashrc ] && . "$HOME/.bashrc"


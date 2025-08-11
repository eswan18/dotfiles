#!/bin/sh

## From "Boost Your Git DX" book.

# Enable shell script strictness
set -eu
# Enable command tracing
set -x
# Ensure config directory exists
mkdir -p ~/.config
# Link Git config if it doesn’t exist
[ ! -e ~/.config/git ] && ln -s "$PWD/config/git" ~/.config/git
# Link inputrc if it exists in repo and doesn’t already exist in home
[ -e "$PWD/.inputrc" ] && [ ! -e ~/.inputrc ] && ln -s "$PWD/.inputrc" ~/.inputrc

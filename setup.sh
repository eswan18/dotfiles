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

# Vim
# Link vimrc if it exists in repo and doesn’t already exist in home
[ -e "$PWD/.vimrc" ] && [ ! -e ~/.vimrc ] && ln -s "$PWD/.vimrc" ~/.vimrc

# Ensure Vundle (Vim plugin manager) is installed
mkdir -p "$HOME/.vim/bundle"
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git "$HOME/.vim/bundle/Vundle.vim" || echo "Warning: failed to clone Vundle; Vim plugins will not be installed automatically."
fi

# Install Vim plugins non-interactively (includes Solarized)
if [ -d "$HOME/.vim/bundle/Vundle.vim" ]; then
  if command -v vim >/dev/null 2>&1; then
    vim -Es -u "$HOME/.vimrc" +PluginInstall +qall || echo "Warning: Vim plugin installation failed. You can rerun: vim +PluginInstall +qall"
  else
    echo "vim not found; skipping Vim plugin installation. Install Vim and run: vim +PluginInstall +qall"
  fi
fi
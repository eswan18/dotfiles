# If any of these locations exist, add them to the PATH.
dirs="$HOME/bin/ $HOME/.local/bin/"
for directory in $dirs; do
    if [ -d "$directory" ]; then
        export PATH="$directory:$PATH"
    fi
done

# If there is a .bashrc_local file, source that.
if [ -f "$HOME/.bashrc_local" ]; then
    . $HOME/.bashrc_local
fi

# Set two-line prompt.
export PS1="----- \u@\h -----\n\w \$ "

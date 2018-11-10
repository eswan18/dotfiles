# If any of these locations exist, add them to the PATH
dirs="$HOME/bin/ $HOME/.local/bin/"
for directory in $dirs; do
    if [ -d "$directory" ]; then
        export PATH="$directory:$PATH"
    fi
done

export PS1="----- \u@\h -----\n\w \$ "

# If there's a bashrc, we should execute it.
if [ -f "$HOME/.bashrc" ]; then
    . $HOME/.bashrc
fi

# If we've set up conda for `conda activate`.
if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
    . /anaconda3/etc/profile.d/conda.sh
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# Pipx
export PATH="$PATH:/home/aangel/.local/bin"
eval "$(register-python-argcomplete pipx)"

# Copyright 2022 Amethyst Reese
# Licensed under the MIT license
#
# Automatic initialization of pyenv

function push_path() {
    _len=${#path}
    _i=${path[(i)$1]}
    if [[ "$_i" -le "$_len" ]]
    then
        path[_i]=()
    fi
    export path=("$1" "$path[@]")
}

if [ -d "$HOME/.local/bin" ]; then
    push_path "$HOME/.local/bin"
fi

if [ -d "$HOME/.pyenv" ]; then
    export PYENV_ROOT="$HOME/.pyenv"
    push_path "$PYENV_ROOT/bin"
    push_path "$PYENV_ROOT/shims"
fi
which pyenv > /dev/null 2>&1 && eval "$(pyenv init -)" || true

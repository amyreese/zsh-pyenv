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

export PYENV_ROOT="$HOME/.pyenv"
push_path "$PYENV_ROOT/bin"
push_path "$PYENV_ROOT/shims"
which pyenv > /dev/null && eval "$(pyenv init -)"

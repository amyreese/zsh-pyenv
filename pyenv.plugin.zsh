# Copyright 2018 John Reese
# Licensed under the MIT license
#
# Automatic initialization of pyenv

if which pyenv > /dev/null
then
    # already in path
else
    if [[ -d "$HOME/.pyenv" ]]
    then
        export PYENV_ROOT="$HOME/.pyenv"
        export PATH="$PYENV_ROOT/bin:$PATH"
        eval "$(pyenv init --path)"
    fi
fi

which pyenv > /dev/null && eval "$(pyenv init -)"

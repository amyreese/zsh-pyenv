# Copyright 2018 John Reese
# Licensed under the MIT license
#
# Automatic initialization of pyenv

which pyenv > /dev/null || export PATH="${PATH}:${HOME}/.pyenv/bin"
which pyenv > /dev/null && eval "$(pyenv init -)"

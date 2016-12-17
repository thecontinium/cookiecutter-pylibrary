#!/bin/sh
eval "$(pyenv init -)"
versions="$(echo $1 | sed 's/:/ /g')"
echo $versions
for v in $versions
do
    echo $v
    pyenv install -s $v
done


#!/bin/sh
eval "$(pyenv init -)"
versions="$(echo $1 | sed 's/:/ /g')"
echo $versions
for v in $versions
do
    echo "Installing: "$v
    pyenv install -s $v
done


#!/bin/bash

set -eu

archive=hugo_extended_"$HUGO_VERSION"_Linux-64bit.tar.gz
wget https://github.com/gohugoio/hugo/releases/download/v"$HUGO_VERSION"/"$archive"
tar xvf "$archive"
chmod u+x ./hugo
export PATH="$PATH:$(pwd)"

[[ -f ~/applicationrc ]] && echo 'export PATH="$PATH:'"$(pwd)"'"' >> ~/applicationrc

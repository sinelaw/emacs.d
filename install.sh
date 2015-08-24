#!/bin/bash -eu
git submodule update --init
sudo apt-get install texinfo
#  ./auto-complete - make doesn't work
for d in ./magit ./helm ./git-gutter-plus ./git-modes ./haskell-mode ./flycheck
do
  echo "Making: $d"
  (cd $d && make || exit 1)
done



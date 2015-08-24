#!/bin/bash -eu
git submodule update --init
sudo apt-get install texinfo
#  ./auto-complete - make doesn't work
for d in ./helm 
do
  echo "Making: $d"
  (cd $d && make || exit 1)
done

test -d ~/.cask || (cd cask && ./go)
cask --verbose


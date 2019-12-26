#!/bin/sh

if [[ -f .*~ || -f *~ ]] ; then
  rm .*~
  rm *~
fi

git add --all .

git commit -m update_`date "+%Y-%m-%d--%H:%M"`

git push origin master

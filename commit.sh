#!/bin/sh

rm .*~
rm *~

git add --all .

git commit -m update_`date "+%Y-%m-%d--%H:%M"`

git push origin master

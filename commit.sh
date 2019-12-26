#!/bin/sh

test -f .*~ 
[ if $? = "0" ] && rm *~
test -f *~
[ if $? = "0" ] && rm .*~

git add --all .

git commit -m update_`date "+%Y-%m-%d--%H:%M"`

git push origin master

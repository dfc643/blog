#!/bin/bash
shopt -s dotglob;
for f in ????/??/*.html
do
    n=$(printf $(echo -n $f | sed 's/\\/\\\\/g;s/\(%\)\([0-9a-fA-F][0-9a-fA-F]\)/\\x\2/g'))
    mv $f $n
done
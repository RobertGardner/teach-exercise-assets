#! /bin/bash

for s in instructions/*.md; do
  dir=${s:13:5}
  mkdir $dir
  cp $s $dir/index.md
done

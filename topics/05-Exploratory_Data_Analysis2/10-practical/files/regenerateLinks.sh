#!/bin/bash
for notebook in \
  hrAnalytics \
; do
  [ ! -L ${notebook}.ipynb ] && ln -s ../../../../datasets/21-employees/${notebook}_bare.ipynb ${notebook}.ipynb
done
[ ! -d data ] && mkdir data
cd data
[ ! -L archive.zip ] && ln -s ../../../../../datasets/21-employees/data/archive.zip
# Remember: chmod u+x regenerateLinks.sh

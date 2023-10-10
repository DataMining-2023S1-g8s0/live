#!/bin/bash
for notebook in \
  1-getting_started_with_pandas \
  2-data_wrangling \
  3-data_visualization \
  workbook \
; do
  [ ! -L ${notebook}.ipynb ] && ln -s ../../../../datasets/20-PandasWorkshop/${notebook}_bare.ipynb ${notebook}.ipynb
done
[ ! -L data.zip ] && ln -s ../../../../datasets/20-PandasWorkshop/data.zip
# Remember: chmod u+x regenerateLinks.sh

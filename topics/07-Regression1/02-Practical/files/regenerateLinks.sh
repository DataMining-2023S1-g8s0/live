#!/bin/bash

linkND() {
  datasetsDir=$1
  notebook=$2
  dataFile=$3
  [ ! -L ${notebook}.ipynb ] && ln -s ../../../../datasets/${datasetsDir}/${notebook}_bare.ipynb ${notebook}.ipynb
  [ ! -L data/${dataFile} ] && ln -s ../../../../../datasets/${datasetsDir}/data/${dataFile} data/${dataFile}
}
[ ! -d data ] && mkdir data
linkND 07-Diamonds Diamonds diamond.dat.txt
linkND 40-ComputerHardware ComputerPerformance machine.csv
# Remember: chmod u+x regenerateLinks.sh

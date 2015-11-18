#!/bin/bash

$folder = /opt
$suffix = java

for file in $(find $folder -name '*.$suffix')
do
  echo "Processing $file file..."
  enscript -p $file.ps $file
  ps2pdf $file.ps $file.pdf
  rm $file.ps
done

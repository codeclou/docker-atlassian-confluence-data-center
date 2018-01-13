#!/bin/bash

for f in manage-confluence-cluster-6.6.0.sh
do
  echo "Replacing version in $f"
  sed -i .bak 's/6\.5\.0/6.6.0/g' $f
  sed -i .bak 's/650/660/g' $f
done

rm -f *.bak

#!/bin/sh -e

ct=0;

for i in $(seq 1 100);
do
  for numPolygons in $(seq 1 10);
  do
    ct=$((ct+1));
    ./node_modules/@seasketch/geoprocessing/dist/base-project/scripts/genRandomFeature.ts $numPolygons "sketch$ct" "$PWD/";
  done
done

zip sketches.zip ./sketch*.json;

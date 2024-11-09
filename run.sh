#!/bin/sh -e

ct=0;

for i in $(seq 1 1000);
do
  for numPolygons in $(seq 1 10);
  do
    ct=$((ct+1));
    ./node_modules/@seasketch/geoprocessing/dist/base-project/scripts/genRandomFeature.ts $numPolygons "sketch$ct" "$PWD/";
    zip -u sketches.zip ./sketch*.json;
    rm ./sketch*.json;
    ls -alsh sketches.zip;
  done
done


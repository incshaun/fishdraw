#! /bin/sh

for seed in $(seq -f "%05g" 1 100)
do
  node fishdraw.js --seed $seed | inkscape --export-type="png" --export-filename=fish/fish$seed -p
done

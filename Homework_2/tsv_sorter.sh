#!/bin/bash

for file in *.tsv; do

   folder="${file%.tsv}"
   mkdir -p "$folder"
   mv "$file" "$folder/"

done

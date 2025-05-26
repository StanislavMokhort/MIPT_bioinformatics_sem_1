#!/bin/bash

tot_symb=0

while IFS= read -r line || [[ -n "$line" ]]; do
   line="${line%$'\n'}"
   if [[ "$line" =~ [0-9] ]] && ! [[ "$line" =~ [XxYy] ]]; then
      len=${#line}
      tot_symb=$((len + tot_symb))
   fi
done < fin

echo "$tot_symb" > fout
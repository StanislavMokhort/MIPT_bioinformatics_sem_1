#!/bin/bash

while IFS=':' read -r username password _ _ _ home _; do
   if [[ "$username" == [ab]* ]]; then
      echo "Username: $username, Home: $home, Password: $password" >> fout
   fi
done < fin
   
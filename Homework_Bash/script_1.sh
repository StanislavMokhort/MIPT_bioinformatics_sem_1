#!/bin/bash

read num1 num2 num3 < fin
sum=$((num1 + num2 + num3))
echo $sum > fout
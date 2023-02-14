#!/bin/bash

min_media=99999
ciudad_min_media=""

for ciudad in $(awk '{print $1}' consumos.txt | uniq); do

    media=$(./cmedia.sh $ciudad)

    if (( $(echo "$media < $min_media" | bc -l) )); then
        min_media=$media
        ciudad_min_media=$ciudad
    fi
done

echo "La ciudad con la media de consumos más baja es: $ciudad_min_media"

#!/bin/bash

cat consumos.txt | while read line
do
    ciudad=$(echo "$line" | awk '{print $1}')
    mes=$(echo "$line" | awk '{print $2}')
    consumo=$(echo "$line" | awk '{print $4}')

    if [[ $ciudad != $last_ciudad ]]; then
        last_ciudad=$ciudad
        last_consumo=inf
    fi

    if [[ $consumo -gt $last_consumo ]]; then
        echo "$ciudad no ha tenido un consumo decreciente"
        break
    fi

    last_consumo=$consumo
done


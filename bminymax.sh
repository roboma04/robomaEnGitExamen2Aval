#!/bin/bash

max_ciu=$(awk 'BEGIN{FS=" "}{if (NR==1) {max_consumo=$4; max_ciu=$1; max_mes=$2; max_anio=$3}; if ($4>max_consumo) {max_consumo=$4; max_ciu=$1; max_mes=$2; max_anio=$3}} END{print max_ciu "," max_mes " " max_anio}' consumos.txt)

min_ciu=$(awk 'BEGIN{FS=" "}{if (NR==1) {min_consumo=$4; min_ciu=$1; min_mes=$2; min_anio=$3}; if ($4<min_consumo) {min_consumo=$4; min_ciu=$1; min_mes=$2; min_anio=$3}} END{print min_ciu "," min_mes " " min_anio}' consumos.txt)

echo "Ciudad con mayor consumo: $max_ciu"
echo "Ciudad con menor consumo: $min_ciu"

#!/bin/bash

while true; do
  read -p "Introduzca el nombre de una ciudad: " ciudad

  total=$(awk -v ciudad="$ciudad" '$1 == ciudad { sum += $4 } END { print sum }' consumos.txt)
  if [[ -n "$total" ]]; then
    echo "El total de consumo para $ciudad es: $total"
    break
  else
    echo "Ciudad no válida. Inténtelo de nuevo."
  fi
done

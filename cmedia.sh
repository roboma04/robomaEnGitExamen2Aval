#!/bin/bash

ciudad="$1"
awk -v ciudad="$ciudad" '$1 == ciudad {sum += $4; count++} END {print sum / count}' consumos.txt

#!/bin/bash

ciudad=$1

awk -v ciudad="$ciudad" 'BEGIN{sum=0;count=0}{if ($1==ciudad){sum+=$4;count+=1}}END{media=sum/count; if (media>=400){print "NO ECO"} else {print "ECO"}}' consumos.txt
 
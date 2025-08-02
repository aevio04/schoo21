#!/bin/bash

awk -F, '
BEGIN {print "\"name\",\"count\""}
NR>1 {
  l=tolower($3)
  if      (l~/junior/)       a["Junior"]++
  else if (l~/middle\/senior/) a["Middle/Senior"]++
  else if (l~/middle/)      a["Middle"]++
  else if (l~/senior/)      a["Senior"]++
}
END {for (k in a) print "\""k"\","a[k]}' ../ex03/hh_positions.csv > hh_uniq_positions.csv 


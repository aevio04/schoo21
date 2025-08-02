#!/bin/bash

awk -F',' '{
     level = "-"
    l = tolower($3)
    if (l ~ /junior|младший/) level = "Junior"
    else if (l ~ /middle[+]?\/senior/) level = "Middle/Senior" 
    else if (l ~ /middle/) level = "Middle"
    else if (l ~ /senior|lead|старший/) level = "Senior"
    $3 = "\"" level "\""
    print
}' OFS=',' ../ex02/hh_sorted.csv > hh_positions.csv
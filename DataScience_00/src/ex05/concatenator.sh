#!/bin/bash

awk -F',' '
NR == 1 {
    header = $0
    next
}
{
    split($2, dt, /T/)
    date = substr(dt[1], 2)  
    output_file = "concatenator" date ".csv"
    
    if (!(output_file in files)) {
        print header > output_file
        files[output_file] = 1
    }
    
    print >> output_file
}' ../ex03/hh_positions.csv
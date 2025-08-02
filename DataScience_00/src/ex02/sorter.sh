#!/bin/bash

(head -n1 ../ex01/hh.csv && tail -n+2 ../ex01/hh.csv | sort -t',' -k1) > hh_sorted.csv
(head -n1 ../ex01/hh.csv && tail -n+2 ../ex01/hh.csv | sort -t',' -k2) > hh_sorted.csv
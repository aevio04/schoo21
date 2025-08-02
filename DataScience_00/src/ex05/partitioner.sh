#!/bin/bash

cat concatenator20*.csv | awk '!a[$0]++' > partitioner.csv
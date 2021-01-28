#!/bin/bash

#select optimal ensemble from grid search
#navigate to directory with all the ensembles 


touch ./best_grid_search.txt 
minimum_rfree=$(grep FINAL ./*/*.log | awk '{print $7}' | sort -n | awk "NR==1 {print $1}") #this sets a variable as the minimum R-free from the grid searches
echo 'Minimum R-free' $minimum_rfree > best_grid_search.txt
targetdir=$(grep -r $minimum_rfree ./*/*.log | grep FINAL | awk 'split($0,a,"/") {print a[2]}') 
echo $targetdir
echo 'Target Directory is' $targetdir >> best_grid_search.txt 
rm grid*

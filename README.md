# phenix
scripts for phenix refinement

Pipeline:

-make txt file with PDB codes of interest
-run prephenix_processing.sh to download PDB files and reflections
-run group_ensemble_setup.sh in order to start holo_refinement.sh for each PDB of interest 
    -holo_refinement.sh runs phenix.refine on each structure
-run grid_search_ens_refine.sh in order to start the grid search and ensemble refinement for each PDB
-run optimal_ensemble_selection.sh to generate a file containing the lowest R-free out of the grid search for a given PDB. This file also has the 
name of the desired directory.


#!/bin/bash
#1/28/21
#set up group ensemble refinements 

#________________________________________________INPUTS________________________________________________#
base_folder='/wynton/home/rotation/cmoore/PDBs' #base folder (where you want to put folders/pdb files)

pdb_filelist=$1  #list of pdb files

while read -r line; do
  PDB=$line
  cd $base_folder
  if [ -d "$PDB" ]; then
    echo "Folder exists." 
  else
    echo 'Need to pre-process' $PDB
  fi
  cd $PDB

  qsub ~/holo_refinement.sh $PDB

done < $pdb_filelist

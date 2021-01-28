
#!/bin/bash
#Stephanie Wankowicz
#04/25/2019

#this must be done before you submit to SGE since SGE cannot connect to the internet!

#________________________________________________INPUTS________________________________________________#
base_folder='/wynton/home/rotation/cmoore/PDBs' #base folder (where you want to put folders/pdb files)

pdb_filelist=$1  #list of pdb files

while read -r line; do
  PDB=$line
  cd $base_folder
  if [ -d "/$PDB" ]; then
    echo "Folder exists." 
  else
    mkdir $PDB
  fi
  #mkdir $PDB
  cd $PDB
  wget https://files.rcsb.org/download/${PDB}.pdb
  wget https://files.rcsb.org/download/${PDB}-sf.cif
  wget http://edmaps.rcsb.org/coefficients/${PDB}.mtz
done < $pdb_filelist

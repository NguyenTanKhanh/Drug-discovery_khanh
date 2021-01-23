#!/bin/bash
for ligands in $(ls -1 ./ligands/)
do
    vina --receptor ./protein/bovineXOR.pdbqt --ligand ./ligands/$ligand --out ./output/ --config config.txt >> docking_result_output.txt
done

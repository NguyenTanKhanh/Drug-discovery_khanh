#! /bin/bash
for f in ./ligands/*.pdbqt; do
    b=`basename $f .pdbqt`
    echo Processing ligand $b
    mkdir -p $b
    vina --config conf.txt--ligand $f >> docking_result_output.txt
done

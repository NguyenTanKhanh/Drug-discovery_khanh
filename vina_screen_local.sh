for f in ./ligands/*.pdbqt; do
    b=`basename $f .pdbqt`
    echo Processing ligand $b
    mkdir -p $b
    vina --config conf.txt--receptor ./protein/bovineXOR.pdbqt--ligand $f --out ./output/${b}/out.pdbqt >> docking_result_output.txt
done

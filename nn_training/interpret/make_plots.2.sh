#!/bin/bash
for cluster in `seq 1 24`
do
    for fold in 0
    do
	python make_plots.py --input_pickle_classification sig.snps.Cluster$cluster.fold$fold.classification \
	       --input_pickle_regression sig.snps.Cluster$cluster.fold$fold.regression \
	       --cluster $cluster \
	       --fold $fold &
    done
done

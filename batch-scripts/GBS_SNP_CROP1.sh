#!/bin/bash

#PBS -A cin_staff
#PBS -l walltime=4:00:00
#PBS -l select=1:ncpus=2:mem=8gb
#PBS -m bea
#PBS -M i.tagliaferri@cineca.it,a.donizetti@cineca.it

cd $PBS_O_WORKDIR

export LUPDIR=/gss/gss_work/DRES_Legpipe/2016_01_lupin

perl ../GBS-SNP-CROP/scripts/GBS-SNP-CROP-1.pl -d SE -b $LUPDIR/BarcodesID.txt -fq HS379-lane1_NoIndex_L001 -s 1 -e 1 -enz1 CTG -enz2 CTG

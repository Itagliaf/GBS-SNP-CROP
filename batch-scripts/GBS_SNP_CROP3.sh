#!/bin/bash

#PBS -A cin_staff
#PBS -l walltime=4:00:00
#PBS -l select=1:ncpus=1:mem=8gb
#PBS -m bea
#PBS -M i.tagliaferri@cineca.it,a.donizetti@cineca.it

cd $PBS_O_WORKDIR
cd parsed

export LUPDIR=/gss/gss_work/DRES_Legpipe/2016_01_lupin

perl  ../../GBS-SNP-CROP/scripts/GBS-SNP-CROP-3.pl -d SE -b $LUPDIR/BarcodesID.txt -fq HS379-lane1_NoIndex_L001


#!/bin/bash

#PBS -A cin_staff
#PBS -l walltime=4:00:00
#PBS -l select=1:ncpus=1:mem=8gb
#PBS -m bea
#PBS -M i.tagliaferri@cineca.it,a.donizetti@cineca.it

cd $PBS_O_WORKDIR
cd parsed

module load profile/advanced
module load autoload trimmomatic

perl ../../GBS-SNP-CROP/scripts/GBS-SNP-CROP-2.pl -d SE -fq HS379-lane1_NoIndex_L001 -t 1 -ph 33 -ad 0 -l 30 -sl 4:30 -tr 30 -m 32


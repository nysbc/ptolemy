#!/bin/sh -f
#python2 /emg/sw/bin/runPtolemyLmm.py $1 $2 $3

# Local runs
source /usr/local/anaconda3/etc/profile.d/conda.sh
conda activate /opt/condaenvs/ptolemy_env
# variable 1 is outputname
# variable 2 is input mrc path
echo $1
echo $2
mrc_path=$2
python /h/acheng/site-packages/ptolemy/lowmag_cli.py -f json $2 > $1
conda deactivate
mv $1 ${mrc_path%%rawdata/*}rawdata/$1.json
echo ${mrc_path%%rawdata/*}rawdata/$1.json


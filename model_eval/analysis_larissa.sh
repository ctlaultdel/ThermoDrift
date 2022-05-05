#!/bin/bash
#SBATCH --job-name=thermodrift
#SBATCH -p ckpt
#SBATCH -A stf-ckpt
#SBATCH --nodes=1
#SBATCH --time=12:00:00
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH -o ~/slurm_out/slurm_%j.out # STDOUT

set -x # put every command after into slurm_out job log 

script='/usr/lusers/aultl/ThermoDrift/model_eval/analysis_larissa.py'


autopep8 --in-place /usr/lusers/aultl/ThermoDrift/model_eval/analysis_larissa.py
autopep8 --in-place /usr/lusers/aultl/ThermoDrift/model_eval/inference_script.py


source activate thermodrift
python -u $script >> output/job.log














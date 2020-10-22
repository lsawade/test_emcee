#!/bin/bash
#SBATCH --job-name=emcee-test    # create a short name for your job                                                 
#SBATCH --nodes=1                # node count                                                                       
#SBATCH --ntasks=1               # total number of tasks across all nodes                                           
#SBATCH --cpus-per-task=32        # cpu-cores per task (>1 if multi-threaded tasks)                                 
#SBATCH --mem-per-cpu=3G         # memory per cpu-core                                                              
#SBATCH --time=00:05:00          # total run time limit (HH:MM:SS)
#SBATCH --reservation=test
#SBATCH --out=./emcee.txt

export OMP_NUM_THREADS=1

module load anaconda3
conda activate testemcee

python test_emcee.py

#!/bin/bash
#SBATCH --partition=kern,preempt       ### queue to submit to
#SBATCH --job-name=slimstats    ### job name
#SBATCH --output=slimstats.out   ### file in which to store job stdout
#SBATCH --error=slimstats.err    ### file in which to store job stderr
#SBATCH --time=240                ### wall-clock time limit, in minutes
#SBATCH --mem=4G              ### memory limit
#SBATCH --nodes=1               ### number of nodes to use
#SBATCH --ntasks-per-node=1     ### number of tasks to launch per node
#SBATCH --cpus-per-task=1       ### number of cores for each task

slim -d sigma=0.2 -d simnum=1 ~/spaceness/slim_recipes/flat_map_vcfout.slim
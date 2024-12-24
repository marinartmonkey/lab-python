#!/bin/bash
#SBATCH --job-name=PythonJob
#SBATCH --output=resultados_Python_pascal_%j.out
#SBATCH --error=errores_Python_pascal_%j.err
#SBATCH --partition=hpc-bio-pascal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=01:00:00

module load anaconda/2023.03

# Ejecución para 10^7 elementos
echo "Ejecutando para 10^7 elementos"
ipython reduc-operation.py -- 10000000

# Ejecución para 10^8 elementos
echo "Ejecutando para 10^8 elementos"
ipython reduc-operation.py -- 100000000


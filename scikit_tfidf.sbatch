#!/usr/bin/bash
#SBATCH --job-name=tfidf
#SBATCH --output=/home/users/%u/out/tfidf.%j.out
#SBATCH --error=/home/users/%u/err/tfidf.%j.err
#SBATCH -p hns
#SBATCH -c 1
#SBATCH --mem=32GB
module load python/3.9.0
python3 scikit_tfidf.py

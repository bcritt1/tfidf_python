#!/usr/bin/bash
#SBATCH --job-name=tfidf
#SBATCH --output=/home/%u/out/tfidf.%j.out
#SBATCH --error=/home/%u/err/tfidf.%j.err
#SBATCH -p normal
#SBATCH -c 1
#SBATCH --mem=32GB
python3 scikit_tfidf.py

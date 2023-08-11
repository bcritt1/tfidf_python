#!/bin/bash
#SBATCH --job-name=tfidf
#SBATCH --output=/home/%u/out/tfidf.%j.out
#SBATCH --error=/home/%u/err/tfidf.%j.err
#SBATCH -p normal
#SBATCH -c 1
#SBATCH --mem=32GB
ml python/3.11.4
pip3 install --user scikit-learn
python3 scikit_tfidf.py

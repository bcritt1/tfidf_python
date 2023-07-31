#!/bin/bash
#SBATCH --job-name=tfidf
#SBATCH --output=/home/%u/out/tfidf.%j.out
#SBATCH --error=/home/%u/err/tfidf.%j.err
#SBATCH -p normal
#SBATCH -c 1
#SBATCH --mem=32GB
pip3 install scikit-learn
python3 scikit_tfidf.py

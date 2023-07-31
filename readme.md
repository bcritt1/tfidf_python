# TF-IDF Workflow

This repo contains two simple files that execute scikitlearn's TF-IDF functionality on a directory of txt files.

## File Overview

The files consist of:

1. [scikit_tfidf.py](scikit_tfidf.py): Runs tfidf on a corpus, 
with outputs going to csv.
3. [scikit_tfidf.sbatch](scikit_tfidf.sbatch): Creates a batch job for scikit_tfidf.py.

## Usage instructions

1. ssh into sherlock with the syntax: 
```
ssh yourSUNetID@rice.stanford.edu
```
2. Once you're on Farmshare, you'll want to have access to these files, so we'll move to the learning environment with:
```bash
cd /farmshare/learning/scripts/scripts/tfidf_python
```
3. Let's also make three directories for the outputs of our process:
```
mkdir ~/out ~/err /scratch/users/$USER/outputs
```
4.  At this point we can submit our sbatch file to slurm, Sherlock's job scheduler: 
```
sbatch scikit_tfidf.sbatch
```
You can watch your program run with
```
watch squeue -u $USER
```
When it finishes running, you should see your outputs as .csv and .json files in the outputs/ 
directory on scratch. This data can then be used as an input for other processes, or analyzed on its own.

### Notes

[^1]: Scratch systems offer very fast read/write speeds, so they're good for things like I/O. However, data on 
scratch is deleted every 60 days if not modified, so if you use scratch, you'll want to transfer results back to your home directory.

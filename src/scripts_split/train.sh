#!/bin/bash

export SINGULARITYENV_HF_HOME="/d/hpc/projects/onj_fri/nlpmaxxing/hf"
export APPTAINERENV_HF_HOME="/d/hpc/projects/onj_fri/nlpmaxxing/hf"
export SINGULARITYENV_CUDA_LAUNCH_BLOCKING=1
export APPTAINERENV_CUDA_LAUNCH_BLOCKING=1

# If of two gpus, only one is healthy, use this to allow only the healthy one in the node
export CUDA_VISIBLE_DEVICES="1"

singularity exec --nv /d/hpc/home/ms88481/containers/container-marjan-cuda-torch.sif python train_s.py

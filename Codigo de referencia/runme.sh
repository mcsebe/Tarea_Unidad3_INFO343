#!/bin/bash
# Data directory
DATASET_DIR="./Data"

# Workspace
WORKSPACE="./"

BACKEND="pytorch"
HOLDOUT_FOLD=1
GPU_ID=0

# Create validation csv
python utils/create_validation.py --dataset_dir=$DATASET_DIR --workspace=$WORKSPACE

# Calculate features
python utils/features.py logmel --dataset_dir=$DATASET_DIR --workspace=$WORKSPACE --data_type=development
python utils/features.py logmel --dataset_dir=$DATASET_DIR --workspace=$WORKSPACE --data_type=test

############ Development ############
# Train
CUDA_VISIBLE_DEVICES=$GPU_ID python $BACKEND/main_pytorch.py train --workspace=$WORKSPACE --validate --holdout_fold=$HOLDOUT_FOLD --cuda

# Validation
CUDA_VISIBLE_DEVICES=$GPU_ID python $BACKEND/main_pytorch.py inference_validation_data --workspace=$WORKSPACE --holdout_fold=$HOLDOUT_FOLD --iteration=3000 --cuda


############ Full train ############
# Train on full data
CUDA_VISIBLE_DEVICES=$GPU_ID python $BACKEND/main_pytorch.py train --workspace=$WORKSPACE --cuda

# Inference testing data
CUDA_VISIBLE_DEVICES=$GPU_ID python $BACKEND/main_pytorch.py inference_testing_data --workspace=$WORKSPACE --iteration=3000 --cuda
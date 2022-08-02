#!/bin/bash
#SBATCH --partition=gpu_7d1g
#SBATCH --nodes=1                # 1 computer nodes
#SBATCH --cpus-per-task=4        # 4 OpenMP threads on EACH MPI TASK
#SBATCH --gres=gpu:1             # Using 1 GPU card
#SBATCH --mem=32GB               # Request xGB memory
#SBATCH --output=/home/user/Project/EAM-FMEG/hpc/train_%j.log   # Standard output

module load gcc openmpi/4.0.5/gcc/8.3.0
module load cuda/11.0.2 cuda/blas/11.0.2 cuda/fft/11.0.2

source activate pytorch160

nvidia-smi

cd /home/user/Project/EAM-FMEG

# camse2
python run.py --config config/camse2-edge-attention-256.yaml --checkpoint checkpoints_camse_edge_attention/vox-cpk.pth.tar

# smic
python run.py --config config/smic-edge-attention-256.yaml --checkpoint checkpoints_smic_edge_attention/vox-cpk.pth.tar

# samm
python run.py --config config/samm-edge-attention-256.yaml --checkpoint checkpoints_samm_edge_attention/vox-cpk.pth.tar
 


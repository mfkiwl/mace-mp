srun python mace/mace/cli/run_train.py \
    --name="MACE_large_density" \
    --train_file=".../mace_large_hp/mace_mp_data/train" \
    --valid_file=".../mace_large_hp/mace_mp_data/valid" \
    --statistics_file=".../mace_mp_data/mptrj-gga-ggapu-statistics.json" \
    --loss='universal' \
    --energy_weight=1 \
    --forces_weight=10 \
    --compute_stress=True \
    --stress_weight=10 \
    --stress_key='stress' \
    --energy_key='energy' \
    --forces_key='forces' \
    --eval_interval=1 \
    --error_table='PerAtomMAE' \
    --model="MACE" \
    --interaction_first="RealAgnosticDensityInteractionBlock" \
    --interaction="RealAgnosticDensityResidualInteractionBlock" \
    --num_interactions=2 \
    --correlation=3 \
    --max_ell=3 \
    --r_max=5.0 \
    --max_L=2 \
    --num_channels=128 \
    --num_radial_basis=8 \
    --MLP_irreps="16x0e" \
    --scaling='rms_forces_scaling' \
    --lr=0.005 \
    --weight_decay=1e-8 \
    --ema \
    --ema_decay=0.995 \
    --scheduler_patience=5 \
    --batch_size=16 \
    --valid_batch_size=32 \
    --pair_repulsion \
    --distance_transform="Agnesi" \
    --max_num_epochs=200 \
    --patience=40 \
    --amsgrad \
    --device=cuda \
    --seed=1 \
    --clip_grad=100 \
    --keep_checkpoints \
    --save_all_checkpoints \
    --restart_latest \
    --distributed \
    --default_dtype="float64" \
    --num_workers=4 \
    --save_cpu
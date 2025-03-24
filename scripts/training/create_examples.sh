DATASET=./data

for FILE in train dev ; do

    python scripts/training/make_supervised_dpr_dataset.py \
        $DATASET/nq-$FILE.json $DATASET/$FILE \
        --target title \
        --mark_target \
        --mark_silver \
        --n_samples 3 \
        --mode a
    
    python scripts/training/make_supervised_dpr_dataset.py \
        $DATASET/nq-$FILE.json $DATASET/$FILE \
        --target span \
        --mark_target \
        --mark_silver \
        --n_samples 10 \
        --mode a

done
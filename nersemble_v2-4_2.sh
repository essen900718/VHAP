#!/bin/bash

NERSET="data/nersemble"
SUBJECT="042"
SEQUENCES=$(cat sequence_list_new.txt)

SRC_ARGS=()

for SEQUENCE in $SEQUENCES; do
    SRC_ARGS+=("export/nersemble/${SUBJECT}/${SUBJECT}_${SEQUENCE}")
done

python vhap/combine_nerf_datasets_manual.py \
  --src_folders "${SRC_ARGS[@]}" \
  --tgt_folder export/nersemble/${SUBJECT}/UNION_${SUBJECT}_v16_ds4 \
  --division_mode manual

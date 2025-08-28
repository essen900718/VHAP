NERSET="data/nersemble"
SUBJECT="042"
SEQUENCES=$(cat sequence_list_new.txt)

for SEQUENCE in $SEQUENCES; do
  TRACK_OUTPUT_FOLDER="output/nersemble/${SUBJECT}_${SEQUENCE}"
  EXPORT_OUTPUT_FOLDER="export/nersemble/${SUBJECT}/${SUBJECT}_${SEQUENCE}"
  python vhap/export_as_nerf_dataset.py \
  --src_folder ${TRACK_OUTPUT_FOLDER} \
  --tgt_folder ${EXPORT_OUTPUT_FOLDER} --background-color white 
done

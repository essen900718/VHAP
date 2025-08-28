SEQUENCE="prof"
TRACK_OUTPUT_FOLDER="output/monocular/${SEQUENCE}"
EXPORT_OUTPUT_FOLDER="export/monocular/${SEQUENCE}"

python vhap/export_as_nerf_dataset.py \
--src_folder ${TRACK_OUTPUT_FOLDER} \
--tgt_folder ${EXPORT_OUTPUT_FOLDER} --background-color white
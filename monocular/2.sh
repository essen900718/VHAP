SEQUENCE="prof"
TRACK_OUTPUT_FOLDER="output/monocular/${SEQUENCE}"

python vhap/track.py --data.root_folder "data/monocular" \
--exp.output_folder $TRACK_OUTPUT_FOLDER \
--data.sequence $SEQUENCE \
--data.n_downsample_rgb 4
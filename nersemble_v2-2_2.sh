NERSET="data/nersemble"
SUBJECT="042"
SEQUENCES=$(cat sequence_list_new.txt)

for SEQUENCE in $SEQUENCES; do
  TRACK_OUTPUT_FOLDER="output/nersemble/${SUBJECT}_${SEQUENCE}"

  #  / 2~5 1e4 / 10 5e4 / 16 1e5 --w.reg_tex_tv 5e4 
  python vhap/track_nersemble_v2.py --data.root_folder ${NERSET} \
    --exp.output_folder $TRACK_OUTPUT_FOLDER \
    --data.subject $SUBJECT --data.sequence $SEQUENCE \
    --data.n_downsample_rgb 4

done

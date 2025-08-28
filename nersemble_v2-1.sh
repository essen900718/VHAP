NERSET="data/nersemble"
SUBJECT="043"
SEQUENCES=$(cat sequence_list_new.txt)
# EMO-1-shout+laugh
# SEQUENCES="EMO-1-shout+laugh EMO-2-surprise+fear EMO-3-sad+happy"

export CUDA_VISIBLE_DEVICES=1

for SEQUENCE in $SEQUENCES; do
	python vhap/preprocess_video_v2.py \
	--input ${NERSET}/${SUBJECT}/sequences/${SEQUENCE}* \
	--downsample_scales 4 \
	--matting_method background_matting_v2
done

SEQUENCE="prof.mp4"

python vhap/preprocess_video.py \
--input data/monocular/${SEQUENCE} \
--matting_method robust_video_matting \
--downsample_scales 4
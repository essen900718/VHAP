# Nersemble Dataset V2

## Downloaded Dataset order

017 <subject>/
    |--- calibration/
    |       |--- camera_params.json
    |       |--- color_calibration.json
    |
    |--- sequences/
        |--- BACKGROUND/
        |   |--- image_<camera_id>.jpg
        |
        |--- EMO-1-shout+laugh <sequence_name>/
        |   |---images/
        |       |--- cam_<camera_id>.mp4
        |
        |--- EMO-2-surprise+fear <sequence_name>/
            |--- images/
                |--- cam_<camera_id>.mp4
            

**step to processing downloaded dataset**
1. delete the `images` folder in each sequence
2. move folder `BACKGROUND` out to the same folder with `calibration`

## To process dataset, should make the dataset be the following order

VHAP <root_folder>/
    |--- data/
        |--- nersemble/
            |--- 017 <subject>/
                |--- BACKGROUND/
                |       |--- image_<camera_id>.jpg
                |
                |--- calibration/
                |       |--- camera_params.json
                |       |--- color_calibration.json
                |
                |--- sequences/
                    |--- EMO-1-shout+laugh <sequence_name>/
                        |--- cam_<camera_id>.mp4
                        |--- cam_<camera_id>.mp4
                        

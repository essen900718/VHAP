import os
import shutil

# Set the dataset root path
dataset_root = "data/nersemble/043"  # Replace with your actual path if needed
sequences_path = os.path.join(dataset_root, "sequences")

# Step 1: Move BACKGROUND to root
background_src = os.path.join(sequences_path, "BACKGROUND")
background_dst = os.path.join(dataset_root, "BACKGROUND")

if os.path.exists(background_src):
    shutil.move(background_src, background_dst)
    print(f"Moved BACKGROUND to {background_dst}")
else:
    print("BACKGROUND folder not found.")

# Step 2: Flatten each sequence's images/ folder
for seq_name in os.listdir(sequences_path):
    seq_path = os.path.join(sequences_path, seq_name)
    images_path = os.path.join(seq_path, "images")

    if os.path.isdir(images_path):
        for file_name in os.listdir(images_path):
            src_file = os.path.join(images_path, file_name)
            dst_file = os.path.join(seq_path, file_name)
            shutil.move(src_file, dst_file)
            print(f"Moved {src_file} -> {dst_file}")
        # Step 3: Delete the now-empty images/ folder
        os.rmdir(images_path)
        print(f"Deleted folder {images_path}")

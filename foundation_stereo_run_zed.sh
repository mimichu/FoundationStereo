# Example from foundation stereo demo
# python scripts/run_demo.py \
#     --left_file ./assets/left.png \
#     --right_file ./assets/right.png \
#     --ckpt_dir ./pretrained_models/23-51-11/model_best_bp2.pth \
#     --out_dir ./test_outputs/ 

svo_name="HD2K_SN39914083_18-44-59"
frame_idx="000000"

python scripts/run_demo.py \
    --left_file ~/Documents/ZED/processed_2/${svo_name}_left/frame_${frame_idx}.png \
    --right_file ~/Documents/ZED/processed_2/${svo_name}_right/frame_${frame_idx}.png \
    --intrinsic_file /home/chuerpan/repo/InteractionRetarget/cam_configs/zed_2i/zed_intrinsics_foundation_stereo.txt \
    --ckpt_dir ./pretrained_models/23-51-11/model_best_bp2.pth \
    --out_dir ./test_outputs/ZED/${svo_name}_${frame_idx}/ \
    --hiera 1

# #!/bin/bash
# # Exit immediately if a command exits with a non-zero status.
# set -e

# # --- Configuration ---
# # Set the SVO name
# SVO_NAME="HD2K_SN39914083_18-44-59"

# # Define base paths
# BASE_DATA_DIR=~/Documents/ZED/processed_2
# LEFT_FRAMES_DIR="${BASE_DATA_DIR}/${SVO_NAME}_left"
# RIGHT_FRAMES_DIR="${BASE_DATA_DIR}/${SVO_NAME}_right"
# BASE_OUTPUT_DIR="./test_outputs/ZED"

# # Define static file paths
# INTRINSIC_FILE="/home/chuerpan/repo/InteractionRetarget/cam_configs/zed_2i/zed_intrinsics_foundation_stereo.txt"
# CKPT_DIR="./pretrained_models/23-51-11/model_best_bp2.pth"

# # --- Main Processing Loop ---
# echo "Starting processing for SVO: ${SVO_NAME}"

# # Loop over every file matching the pattern "frame_*.png" in the left directory
# for left_filepath in "${LEFT_FRAMES_DIR}"/frame_*.png; do
    
#     # Get the base filename (e.g., "frame_000000.png")
#     filename=$(basename "${left_filepath}")
    
#     # Extract the frame index (e.g., "000000")
#     # 1. Remove "frame_" prefix: ${filename#frame_}
#     # 2. Remove ".png" suffix: ${...%.png}
#     frame_idx="${filename#frame_}"
#     frame_idx="${frame_idx%.png}"
    
#     echo "--> Processing frame: ${frame_idx}"
    
#     # Define the corresponding right file and output directory
#     right_filepath="${RIGHT_FRAMES_DIR}/frame_${frame_idx}.png"
#     output_dir="${BASE_OUTPUT_DIR}/${SVO_NAME}_${frame_idx}/"
    
#     # Check if the corresponding right file exists before running
#     if [ ! -f "${right_filepath}" ]; then
#         echo "    WARNING: Right file not found, skipping: ${right_filepath}"
#         continue
#     fi
    
#     # Run the Python script with the dynamic paths
#     python scripts/run_demo.py \
#         --left_file "${left_filepath}" \
#         --right_file "${right_filepath}" \
#         --intrinsic_file "${INTRINSIC_FILE}" \
#         --ckpt_dir "${CKPT_DIR}" \
#         --out_dir "${output_dir}" \
#         --hiera 1
# done

# echo "Processing complete for all frames."
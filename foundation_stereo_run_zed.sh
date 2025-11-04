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
# python scripts/run_demo.py \
#     --left_file ./assets/left.png \
#     --right_file ./assets/right.png \
#     --ckpt_dir ./pretrained_models/23-51-11/model_best_bp2.pth \
#     --out_dir ./test_outputs/ 

# python scripts/run_demo.py \
#     --left_file ~/Documents/ZED/processed/HD2K_SN39914083_18-44-59_left/frame_000000.png \
#     --right_file ~/Documents/ZED/processed/HD2K_SN39914083_18-44-59_right/frame_000000.png \
#     --intr_file /home/chuerpan/repo/InteractionRetarget/zed_intrinsics.txt \
#     --ckpt_dir ./pretrained_models/23-51-11/model_best_bp2.pth \
#     --out_dir ./test_outputs/ZED/HD2K_SN39914083_18-44-59_000000/ \
#     --hiera 1

 
python scripts/run_demo.py \
    --left_file ~/Documents/ZED/processed/HD2K_SN39914083_18-44-59_left/frame_000000.png \
    --right_file ~/Documents/ZED/processed/HD2K_SN39914083_18-44-59_right/frame_000000.png \
    --intrinsic_file /home/chuerpan/repo/InteractionRetarget/cam_configs/zed_2i/zed_intrinsics_foundation_stereo.txt \
    --ckpt_dir ./pretrained_models/23-51-11/model_best_bp2.pth \
    --out_dir ./test_outputs/ZED/HD2K_SN39914083_18-44-59_000000/ \
    --hiera 1
export HF_HUB_ENABLE_HF_TRANSFER=1

huggingface-cli download a-normal-username/maxtext-jetstream-models \
    --revision ${MAXTEXT_MODEL_TO_RUN} \
    --local-dir ${PWD}/maxtext-models/${MAXTEXT_MODEL_TO_RUN} \
    --local-dir-use-symlinks False

python run_server.py --model-path ${PWD}/maxtext-models/${MAXTEXT_MODEL_TO_RUN}
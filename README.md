A repository for converted models from HF format to MaxText format, as well as automated scripts for inference (and possibly training later).

First, clone this repo and setup:
```
git clone https://github.com/Froggy111/maxtext-jetstream-models
cd maxtext-jetstream-models
bash setup.sh
```

To set the model-id to run:
```
export MAXTEXT_MODEL_TO_RUN=${the model id (must be one of the list below)}
```

To automatically start an http server, run:
```
bash start_server.sh
```
after setting the model-id in the same shell.

To convert HF model to llama CKPT format:
```
python convert.py --fromFolder ${true or false} --pathToDir ${path to model folder, only if fromFolder is true} --HFModelID ${HF model ID, only if fromFolder is false} --revision ${HF model revision, only if needed}
```

To directly convert llama/mistral HF model to MaxText format:
```
# refer to the above for what the args are
export fromFolder=false
export pathToDir=""
export HFModelID=""
export revision=""
export MODEL_TYPE="" # can be llama2-70b, llama2-13b, llama2-7b, mistral-7b, mixtral-8x7b
export MODEL_NAME="" # name of folder you want checkpoint to be stored in
export MAKE_PARAM_ONLY=true # whether to make another param-only checkpoint
bash convert.sh
```
You will then need to add your own config.yaml to the folder created in maxtext-models

#!/bin/bash
n=${n:-100}
set +x
docker run -it --mount type=bind,source=${HOME}/models/Meta-Llama-3-8B-Instruct-Q6_K.gguf,target=/Meta-Llama-3-8B-Instruct-Q6_K.gguf llama-intel-sycl:latest /usr/bin/llama-cli --color -m /Meta-Llama-3-8B-Instruct-Q6_K.gguf -n ${n} -p "$*"


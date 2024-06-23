#!/bin/bash
set +x
docker run -it --mount type=bind,source=${HOME}/models/,target=/models llama-intel-sycl:latest /bin/bash


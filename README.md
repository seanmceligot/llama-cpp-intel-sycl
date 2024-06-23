# llama-cpp-intel-sycl

## Overview
This project provides a Dockerized setup for running Llama models with Intel SYCL support.

## Prerequisites
- Docker installed on your machine

## Build
To build the Docker image, run the following command:
```sh
docker build -t llama-cpp-intel-sycl .
```

## Model Download
Download the Llama model from the following link and save it to `~/models/`:
[https://huggingface.co/bartowski/Meta-Llama-3-8B-Instruct-GGUF/blob/main/Meta-Llama-3-8B-Instruct-Q6_K.gguf](https://huggingface.co/bartowski/Meta-Llama-3-8B-Instruct-GGUF/blob/main/Meta-Llama-3-8B-Instruct-Q6_K.gguf)

## Usage
To run the model, use the following example command:
```sh
n=15 ./llama-cpp-intel-sycl-prompt.sh 'The most common yellow bird in north america is'
```
## Example Output
This example ran in 4.35 seconds on a Framework 13 laptop with Intel 11th Gen Tiger Lake and 16 GB of RAM.

```
The most common yellow bird in north america is the American Goldfinch (Spinus tristis). They are found
```
Larger values for n will run longer in both time and output.

## License
This project is licensed under the terms of the MIT license. See the [LICENSE](LICENSE) file for details.


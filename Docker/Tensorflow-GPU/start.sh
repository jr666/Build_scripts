#!/bin/bash

docker run --gpus all -it --rm -p 8888:8888 -v ~/notebooks:/tf tensorflow/tensorflow:latest-gpu-jupyter 

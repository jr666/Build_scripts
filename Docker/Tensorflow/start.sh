docker pull tensorflow/tensorflow                                     # Download latest image
docker run -it -p 8888:8888 -v ~/notebooks:/tf tensorflow/tensorflow  # Start a Jupyter notebook server 

# docker-stacks/r-notebook [https://github.com/jupyter/docker-stacks/tree/master/r-notebook]
# https://hub.docker.com/r/jupyter/r-notebook/dockerfile

FROM jupyter/r-notebook:2023-03-27

# Configure environment
ENV DOCKER_IMAGE_NAME='sc-py-env'
ENV VERSION='2023-07-16' 

# How to connect all conda envs to jupyter notebook
# https://stackoverflow.com/questions/61494376/how-to-connect-r-conda-env-to-jupyter-notebook
RUN conda install -y -n base nb_conda_kernels

# Install packages in environment.yml file
ADD environment.yml .
RUN /bin/bash -c "conda env update --file environment.yml"
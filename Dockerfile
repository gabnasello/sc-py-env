FROM quay.io/jupyter/r-notebook:2023-12-14

# Configure environment
ENV DOCKER_IMAGE_NAME='sc-py-env'
ENV VERSION='2024-05-15' 

# Install Python packages
ADD requirements.txt /
RUN pip install -r /requirements.txt

RUN echo "alias jl='jupyter server list'" >> ~/.bashrc
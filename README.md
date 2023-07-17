# Docker Image for scRNA-seq data analysis in Python

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/gabnasello/sc-py-env/HEAD)

# Build the Docker Image

From the project folder, run the command below:

```bash build.sh```

# Run Docker container

## docker-compose approach (recommended)

From the project folder, run the command below:

```docker-compose up```

## Alternative approach

You can run the following command:

```docker run -it --rm  -p 8888:8888 --volume $HOME:/home/researcher --name sc-py-env gnasello/sc-py-env:latest```
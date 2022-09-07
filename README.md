# Docker image for building bootlin tranining materials

This repository provides a dockerfile for creating a docker container for building bootlin tranining materials found at: [https://github.com/bootlin/training-materials](https://github.com/bootlin/training-materials)

## Building docker image

`docker build -t $USER/bootlin-materials-builder .`

## Running docker container

`docker run -it --rm --mount type=bind,source=~/training-materials/,target=/materials/ $USER/bootlin-materials-builder`

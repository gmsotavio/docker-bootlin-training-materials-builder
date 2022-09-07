# Build

## Building docker image

`docker build -t $USER/bootlin-materials-builder .`

## Running docker container

`docker run -it --rm --mount type=bind,source=/home/otaviogomes/Desktop/bootlin_docs/training-materials/,target=/materials/ $USER/bootlin-materials-builder`

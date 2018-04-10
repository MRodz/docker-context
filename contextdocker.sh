#!/bin/bash
IMAGE=bdn
docker run --rm -it -h CONTAINER -v $PWD:/data "$IMAGE"

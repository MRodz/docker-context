#!/bin/bash

# setting ConTeXt root. doesn't work with RUN in Dockerfile
. /context/tex/setuptex

# copying from /data enables changes of *.tex-files on host
cp /data/*.tex .
context *.tex

cp *.pdf /data

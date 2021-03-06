#!/bin/bash

echo "rsync from local to Tegra-ubuntu-1:caffe/examples"
set -x
rsync -avc $@ --exclude=".*" --include="*plot*" --include="*.ipynb" --include="mnist" --include="mnist/*.prototxt" --exclude="*" . tegra-ubuntu-1:caffe/examples/

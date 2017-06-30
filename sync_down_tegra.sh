#!/bin/bash

echo "rsync from remote Tegra-ubuntu-1:caffe/examples"
set -x
rsync -avc $@ --include="*.ipynb" --include="mnist" --include="mnist/*.prototxt" --exclude="*" tegra-ubuntu-1:caffe/examples/ .

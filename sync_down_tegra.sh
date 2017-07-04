#!/bin/bash

echo "rsync from remote Tegra-ubuntu-1:caffe/examples"
set -x
rsync -avc $@ --exclude=".*" --include="*.sh" --include="*.test" --include="*.train" --include="*plot*" --include="*.png" --include="*.ipynb" --include="mnist" --include="mnist/*.prototxt" --exclude="*" tegra-ubuntu-1:caffe/examples/ .

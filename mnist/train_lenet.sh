#!/usr/bin/env sh
set -e

$CAFFE_ROOT/build/tools/caffe train --solver=./lenet_solver.prototxt $@

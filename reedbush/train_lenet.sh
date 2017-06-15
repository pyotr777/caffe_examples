#!/usr/bin/env sh
set -e

${CAFFE_ROOT}/build/tools/caffe train --solver=examples/mnist/lenet_solver.prototxt $@
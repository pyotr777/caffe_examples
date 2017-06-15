#!/bin/sh
#PBS -q u-short
#PBS -l select=1:mpiprocs=1:ompthreads=1
#PBS -W group_list=gi96
#PBS -l walltime=00:15:00
cd $PBS_O_WORKDIR
. /etc/profile.d/modules.sh
module load intel
module load caffe
BUILD=${CAFFE_ROOT}/build/examples/mnist

env | grep -i caffe 2>&1
./create_mnist.sh 2>&1 | tee caffe_mnist.log
./train_lenet.sh 2>&1 | tee -a caffe_mnist.log
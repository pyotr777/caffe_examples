#!/bin/bash

docker run -ti --name caffe -v $(pwd):/root/ -p 8888:8888 pyotr777/caffe-jupyter jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token=""
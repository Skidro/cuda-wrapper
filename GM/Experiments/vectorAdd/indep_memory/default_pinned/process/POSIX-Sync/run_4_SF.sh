#!/bin/bash
for i in `seq 1 4`;
do
    LD_PRELOAD=/home/ubuntu/GM/cuda_wrapper/POSIX_Locks/libcudart_wrapper.so chrt -f 1 ../vectorAdd $1  2>>log &
done

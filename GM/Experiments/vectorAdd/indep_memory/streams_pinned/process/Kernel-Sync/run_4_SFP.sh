#!/bin/bash
for i in `seq 1 4`;
do
    LD_PRELOAD=/home/ubuntu/GM/cuda_wrapper/Kernel_Locks/libcudart_wrapper.so chrt -f $i ../vectorAdd $1  2>>log &
done

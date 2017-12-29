#!/bin/bash
BASEDIR=$(dirname "$0")

##### You only need to change these variables #####
#
# This is your payment address, if you haven't already go create a monero wallet and replace with yours. 
ADDRESS='44tLjmXrQNrWJ5NBsEj2R77ZBEgDa3fEe9GLpSf2FRmhexPvfYDUAB7EXX1Hdb3aMQ9FLqdJ56yaAhiXoRsceGJCRS3Jxkn.019e33113a698491140172c896dfab644bbdf4748e341a3d851f812fceaffa5b'

# Threads specify how many processes to start, this value should not surpass the amount of CPU cores.
# Intel i3 and i5 have 4 cores, so use all four or leave one free. i7 CPUs can have up to 8 threads.
THREADS=4
##################################################

cd $BASEDIR
./minerd -a cryptonight -o stratum+tcp://monero.us.to:3333 -u $ADDRESS -p x -t $THREADS


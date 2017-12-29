#!/bin/bash
BASEDIR=$(dirname "$0")

##### You only need to change these variables #####
#
# This is your payment address, if you haven't already go create a monero wallet and replace with yours. 
ADDRESS='45TtdSmDY2fQSTyWTK2buRKMvFNmBMPagE3kKtTUYyWsbLEm5rB9z8sEAu1MHd5PPz1WkeRvZGBzVQceUPsAXGFJSRg8pGw'

# Threads specify how many processes to start, this value should not surpass the amount of CPU cores.
# Intel i3 and i5 have 4 cores, so use all four or leave one free. i7 CPUs can have up to 8 threads.
THREADS=4
##################################################

cd $BASEDIR
./minerd -a cryptonight -o stratum+tcp://monero.us.to:2222 -u $ADDRESS -p x -t $THREADS


#!/bin/bash

apt update && apt-get install git build-essential cmake automake libtool autoconf libuv1-dev -y
git clone https://github.com/scala-network/xlarig
mkdir xlarig/build && cd xlarig/build
cmake ..
make -j$(nproc)
./xlarig --donate-level 0 -o scala.herominers.com:10130 -u Siz7KzWmiNWSRTjZBAt5qqWC5PPYLVGvQdxfDPsyMXpUMkRuzwKNLEbfevN4Eoh76gTvxPeszEj5R7GmJMnkHDD8Ms7Peb4xquq1MRCr8v6Us -p x -a panthera -k --cpu-affinity 3 --cpu-priority 5 -t 2

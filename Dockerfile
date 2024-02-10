FROM ubuntu:latest AS builder

RUN apt update && apt install -y build-essential git cmake python3 python3-pip python-is-python3
RUN apt install -y gcc-arm-none-eabi libnewlib-arm-none-eabi libstdc++-arm-none-eabi-newlib

WORKDIR /sdk
RUN git clone https://github.com/raspberrypi/pico-sdk.git
WORKDIR /sdk/pico-sdk/tools/pioasm/build
RUN cmake .. && make -j4
RUN mv /sdk/pico-sdk/tools/pioasm/build/pioasm /




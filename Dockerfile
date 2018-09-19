FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y git build-essential cmake

WORKDIR /opt

# PISTACHE
RUN git clone https://github.com/oktal/pistache.git
RUN cd pistache && \
    git submodule update --init && \
    mkdir build && \
    cd build && \
    cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release .. && \
    make && \
    make install

# TESTSERVER
ADD testserver ./testserver
RUN cd testserver && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make

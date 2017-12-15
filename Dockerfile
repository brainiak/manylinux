FROM ubuntu:16.04

ARG VERSIONS
ENV VERSIONS $VERSIONS
ENV LD_LIBRARY_PATH /usr/local/lib:/usr/lib

COPY ./ /manylinux

RUN apt update && apt install -y \
      build-essential \
      zlib1g-dev \
      libsqlite3-dev \
      libbz2-dev \
      expat \
      libgdbm-dev \
      libreadline-dev \
      libssl-dev \
      wget \
      patchelf \
      git \
      zip \
      unzip

# Install python versions
RUN /manylinux/bin/compile_python $VERSIONS

# Remove this symlink because it's so polluted
RUN rm /usr/local/bin/python3

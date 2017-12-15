FROM quay.io/pypa/manylinux1_x86_64:latest

ARG VERSIONS
ENV VERSIONS $VERSIONS
COPY ./ /manylinux

RUN yum install -y \
      openssl-devel \
      bzip2-devel

RUN /manylinux/bin/compile_python $VERSIONS

# Remove this symlink because it's so polluted
RUN rm -f /usr/local/bin/python3

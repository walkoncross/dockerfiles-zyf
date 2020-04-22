FROM gpmidi/centos-6.3
#FROM centos:6

ENV container docker
LABEL maintainer="zhaoyafei"
LABEL email="zhaoyafei0210@gmail.com"
LABEL github="https://github.com/walkoncross/dockerfiles-zyf"

#install gcc4.8.2, ref: https://gist.github.com/giwa/b1fb1e44dc0a7d270881
RUN yum install wget && wget http://people.centos.org/tru/devtools-2/devtools-2.repo -O /etc/yum.repos.d/devtools-2.repo \
    && yum install devtoolset-2-gcc devtoolset-2-binutils \
    && yum install devtoolset-2-gcc-c++ devtoolset-2-gcc-gfortran \
    && /opt/rh/devtoolset-2/root/usr/bin/gcc --version \
    && scl enable devtoolset-2 bash \
    && source /opt/rh/devtoolset-2/enable

ENTRYPOINT [ "/bin/bash" ]
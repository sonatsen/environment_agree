FROM centos:7

# Add Intel-mkl libraries
RUN sudo yum-config-manager --add-repo https://yum.repos.intel.com/mkl/setup/intel-mkl.repo
#import GPG-Key
RUN sudo rpm --import https://yum.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB
# Perform updates
RUN yum -y update; yum clean all

# install packages
RUN yum -y install intel-mkl-2019.2-057

RUN yum clean all

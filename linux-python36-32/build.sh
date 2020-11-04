#!/bin/sh

##
# Install scikit-learn wheel from within a docker container
#

set -e

# Install prerequisites.
#dnf search openmp
yum install -y unzip python3-devel openmpi
yum update -y

# Create virtual environment.
python3 -m venv linux32-python36
source linux32-python36/bin/activate

# install the wheel
pip install -U pip
cd home/
pip install scikit_learn-0.24.dev0-cp36-cp36m-manylinux2010_i686.whl
python -c 'import sklearn; sklearn.show_versions()'

yum autoremove -y
yum clean all


#!/bin/sh

##
# Install scikit-learn wheel from within a docker container
#

set -e

# Install prerequisites.
#dnf search openmp
dnf install -y unzip python3-devel openmpi
dnf update -y

# Create virtual environment.
python3 -m venv linux64-python38
source linux64-python38/bin/activate

# install the wheel
pip install -U pip
cd home/
pip install scikit_learn-0.24.dev0-cp38-cp38-manylinux2010_x86_64.whl
python -c 'import sklearn; sklearn.show_versions()'

dnf autoremove -y
dnf clean all


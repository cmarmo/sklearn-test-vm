#!/bin/sh

##
# Install scikit-learn wheel from within a docker container
#

set -e

# Install prerequisites.
apt-get update -y
apt-get install -y unzip python3-dev libopenmpi-dev python3.4-venv

# Create virtual environment.
python3 -m venv linux32-python36
. linux32-python36/bin/activate

# install the wheel
pip install -U pip
cd home/
pip install scikit_learn-0.24.dev0-cp36-cp36m-manylinux2010_i686.whl
python -c 'import sklearn; sklearn.show_versions()'

# Clean up.
apt-get autoremove -y
apt-get clean
rm -rf /var/lib/apt/lists/partial/* /tmp/* /var/tmp/*


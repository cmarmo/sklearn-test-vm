##
# epn-vespa/gdal-fits
#
# This creates a Fedora derived base image that installs the GDAL
# git clone compiled with the improved FITS driver.  The build process
# is based on that defined in
# <https://voparis-confluence.obspm.fr/display/VES/GDAL+with+FITS>
#

# Fedora 26 (for Python 3.6)
FROM fedora:26

MAINTAINER Chiara Marmo <marmochiaskl@gmail.com>

# Install the wheel.
ADD . /home
RUN sh /home/build.sh

# scikit-learn and dependencies version
#CMD python -c 'import sklearn; sklearn.show_versions()'

# Command prompt
#ENTRYPOINT /bin/bash

# python-libsedml [![Build Status](https://travis-ci.org/vincent-noel/python-libsedml.svg?branch=master)](https://travis-ci.org/vincent-noel/python-libsedml)
Python package for the SED-ML library, built using latest images from SBML sourceforge repository, NuML and SEDML Github repositories.
For more information about SEDML, please see [http://sed-ml.org/](http://sed-ml.org/).


# Dependencies

subversion git g++ python-dev python-setuptools cmake swig zlib1g-dev libxml2-dev libbz2-dev libcurl4-openssl-dev


# Install

To install dependencies :

    bash scripts/install_dep.sh
    
   
To install the library :

    python setup.py install
    
    
To download the library and install it from pip :

    pip install git+https://github.com/vincent-noel/python-libsedml.git


# License

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

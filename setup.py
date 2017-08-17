from setuptools import setup, find_packages
from subprocess import call
from os.path import join, dirname, abspath

call(["/bin/bash", join(join(dirname(abspath(__file__)), "scripts"), "install.sh")])

setup(
	name             = "python-libsedml",
	version          = "0.4.2",
	description      = "LibSEDML Python API",
	long_description = ("libSEDML is a library for reading, writing and "+
	"manipulating SEDML. It is written in ISO C and C++, supports SEDML "+
	"Levels 1, Version 1-3, and runs on Debian Linux. For more information"+
	"about SEDML, please see http://sed-ml.org/."),
	license          = "LGPL",
	author           = "Frank T. Bergmann, Vincent Noel (packaging)",
	url              = "http://sed-ml.org/",
	packages=find_packages(),
	include_package_data=True,
)

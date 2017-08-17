git clone https://github.com/NuML/NuML.git
cd NuML/libnuml

mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=../../../../dependencies -DLIBNUML_DEPENDENCY_DIR=../../../../install/ -DEXTRA_LIBS="xml2;z;bz2;" -DLIBSBML_STATIC=ON -DWITH_PYTHON=ON ..
make
make install

cd ../../..

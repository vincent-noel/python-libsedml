git clone https://github.com/vincent-noel/libSEDML.git
cd libSEDML

mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=../../../install -DEXTRA_LIBS="xml2;z;bz2;" -DLIBSEDML_DEPENDENCY_DIR=../../../install -DLIBSBML_STATIC=ON -DLIBNUML_STATIC=ON -DWITH_PYTHON=ON ..
make
make install

cd ../..

git clone https://github.com/fbergmann/libSEDML.git
cd libSEDML

mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=../../../install/ -DLIBSEDML_DEPENDENCY_DIR=../../../install/ -DEXTRA_LIBS="xml2;z;bz2;" -DLIBSBML_STATIC=ON -DLIBNUML_STATIC=ON -DWITH_PYTHON=ON ..
make
make install

cd ../..

git clone https://github.com/fbergmann/libSEDML.git
cd libSEDML

mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=../../../install/ -DLIBSEDML_DEPENDENCY_DIR=../../../install/ -DEXTRA_LIBS="xml2;z;bz2;" -DSWIG_DIR=/usr/local/share/swig/3.0.8/ -DSWIG_EXECUTABLE=/usr/local/share/swig/3.0.8/bin/swig -DLIBSBML_STATIC=ON -DLIBNUML_STATIC=ON -DWITH_PYTHON=ON ..
make
make install

cd ../..

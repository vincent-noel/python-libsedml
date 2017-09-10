svn -q checkout http://svn.code.sf.net/p/sbml/code/trunk/libsbml/ libsbml
cd libsbml

mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=../../../install/ -DEXTRA_LIBS="xml2;z;bz2;" -DSWIG_DIR=/usr/local/share/swig/3.0.8/ -DSWIG_EXECUTABLE=/usr/local/share/swig/3.0.8/bin/swig -DLIBSBML_USE_LEGACY_MATH=ON ..
make
make install

cd ../..

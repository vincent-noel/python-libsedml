svn -q checkout http://svn.code.sf.net/p/sbml/code/trunk/libsbml/ libsbml
cd libsbml

mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=../../../install/ -DEXTRA_LIBS="xml2;z;bz2;" -DLIBSBML_USE_LEGACY_MATH=ON ..
make
make install

cd ../..

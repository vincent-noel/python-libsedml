
svn -q checkout http://svn.code.sf.net/p/sbml/code/trunk/libsbml/ libsbml
cd libsbml

mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=../../../dependencies -DWITH_PYTHON=ON -DLIBSBML_USE_LEGACY_MATH=ON ..
make
make install

cd ../..

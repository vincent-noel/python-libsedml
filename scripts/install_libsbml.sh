svn -q checkout http://svn.code.sf.net/p/sbml/code/trunk/libsbml/ libsbml
cd libsbml

mkdir build
cd build

if [ -f "/usr/local/share/swig/3.0.8/bin/swig" ]
then
    cmake -DCMAKE_INSTALL_PREFIX=../../../install/ -DEXTRA_LIBS="xml2;z;bz2;" -DSWIG_EXECUTABLE=/usr/local/share/swig/3.0.8/bin/swig -DLIBSBML_USE_LEGACY_MATH=ON ..
else
    cmake -DCMAKE_INSTALL_PREFIX=../../../install/ -DEXTRA_LIBS="xml2;z;bz2;" -DLIBSBML_USE_LEGACY_MATH=ON ..

fi


make
make install

cd ../..

svn -q checkout http://svn.code.sf.net/p/sbml/code/trunk/libsbml/ libsbml
cd libsbml

mkdir build
cd build

CMAKE=cmake
if [ -f "/opt/cmake-3.8.2-Linux-x86_64/bin/cmake" ]
then
    CMAKE=/opt/cmake-3.8.2-Linux-x86_64/bin/cmake
fi

if [ -f "/usr/local/share/swig/3.0.8/bin/swig" ]
then
    $CMAKE -DCMAKE_INSTALL_PREFIX=../../../install/ -DEXTRA_LIBS="xml2;z;bz2;" -DSWIG_EXECUTABLE=/usr/local/share/swig/3.0.8/bin/swig -DLIBSBML_USE_LEGACY_MATH=ON ..
else
    $CMAKE -DCMAKE_INSTALL_PREFIX=../../../install/ -DEXTRA_LIBS="xml2;z;bz2;" -DLIBSBML_USE_LEGACY_MATH=ON ..

fi


make
make install

cd ../..

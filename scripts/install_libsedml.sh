git clone -b swig_compatibility https://github.com/vincent-noel/libSEDML.git
cd libSEDML

mkdir build
cd build

CMAKE=cmake
if [ -f "/opt/cmake-3.8.2-Linux-x86_64/bin/cmake" ]
then
    CMAKE=/opt/cmake-3.8.2-Linux-x86_64/bin/cmake
fi

if [ -f "/usr/local/share/swig/3.0.8/bin/swig" ]
then
    $CMAKE -DCMAKE_INSTALL_PREFIX=../../../install/ -DLIBSEDML_DEPENDENCY_DIR=../../../install/ -DEXTRA_LIBS="xml2;z;bz2;" -DSWIG_EXECUTABLE=/usr/local/share/swig/3.0.8/bin/swig -DLIBSBML_STATIC=ON -DLIBNUML_STATIC=ON -DWITH_PYTHON=ON ..
else
    $CMAKE -DCMAKE_INSTALL_PREFIX=../../../install/ -DLIBSEDML_DEPENDENCY_DIR=../../../install/ -DEXTRA_LIBS="xml2;z;bz2;" -DLIBSBML_STATIC=ON -DLIBNUML_STATIC=ON -DWITH_PYTHON=ON ..
fi

make
make install

cd ../..

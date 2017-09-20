git clone https://github.com/NuML/NuML.git
cd NuML/libnuml

mkdir build
cd build

if [ -f "/usr/local/share/swig/3.0.8/bin/swig" ]
then
    cmake -DCMAKE_INSTALL_PREFIX=../../../../install/ -DLIBNUML_DEPENDENCY_DIR=../../../../install/ -DEXTRA_LIBS="xml2;z;bz2;" -DSWIG_EXECUTABLE=/usr/local/share/swig/3.0.8/bin/swig -DLIBSBML_STATIC=ON -DWITH_PYTHON=ON ..
else
    cmake -DCMAKE_INSTALL_PREFIX=../../../../install/ -DLIBNUML_DEPENDENCY_DIR=../../../../install/ -DEXTRA_LIBS="xml2;z;bz2;" -DLIBSBML_STATIC=ON -DWITH_PYTHON=ON ..
fi

make
make install

cd ../../..

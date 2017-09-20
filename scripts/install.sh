#!/bin/bash
EXEC_DIR=$PWD
CMD=$0

if [ "${CMD:0:1}" == "/" ]
then
    # absolute path
    SCRIPTS_DIR=`dirname ${CMD}`

else
    # relative path
    SCRIPTS_DIR=`dirname $( realpath $PWD/${CMD} )`

fi
ROOT_DIR=`dirname $SCRIPTS_DIR`

if [ ! -f ${ROOT_DIR}/libsedml/_libsedml.so ]
then

    mkdir ${ROOT_DIR}/builds
    mkdir ${ROOT_DIR}/install
    cd ${ROOT_DIR}/builds

    ${SCRIPTS_DIR}/install_libsbml.sh
    ${SCRIPTS_DIR}/install_libnuml.sh
    ${SCRIPTS_DIR}/install_libsedml.sh

    mkdir -p ${ROOT_DIR}/libsedml
    cp ${ROOT_DIR}/install/lib/python2.7/site-packages/libsedml/libsedml.py ${ROOT_DIR}/libsedml/__init__.py
    cp ${ROOT_DIR}/install/lib/python2.7/site-packages/libsedml/_libsedml.so ${ROOT_DIR}/libsedml/_libsedml.so

fi

cd ${EXEC_DIR}



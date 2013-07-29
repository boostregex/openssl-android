#!/bin/bash

set -e

NDK_DIST=${HOME}/ndk-prebuilt
PROJECT=openssl
PROJECT_DIST=${NDK_DIST}/${PROJECT}

if [ ! -e jni/Application.mk ];
then
  echo "Please run this in the top level directory of the project"
  exit 1
fi

if [ which ndk-build >/dev/null 2>&1 ];
then
  ndk-build
else
  if [ -z "${NDK_HOME}" ];
  then
    echo "Please set NDK_HOME"
    exit 1
  fi
  ${NDK_HOME}/ndk-build
fi

mkdir -p ${PROJECT_DIST}
cp -r libs/* ${PROJECT_DIST}
cp prebuilt/Android.mk ${PROJECT_DIST}

echo "Library ${PROJECT} deployed successfully to ${PROJECT_DIST}"


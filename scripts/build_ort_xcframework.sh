#!/bin/sh
BASE_DIR=`pwd`

DEST_DIR=$BASE_DIR/xcframework
LIBRARY_NAME=OnnxRuntime
LIBRARY_VERSION=1.19.2

SOURCE_SDK_DIR="./lib/onnxruntime-osx-universal2-1.19.2"
LIB_DIR=lib
LIB_FILE=libonnxruntime
HEADERS_DIR=$SOURCE_SDK_DIR/include
NDI5_LICENSE_FILE=libndi_licenses.txt

#NDI5_SDK_DIR="/Library/NDI SDK for Apple"
#NDI5_LIB_DIR=lib/macOS
#NDI5_LIB=libndi.dylib
#NDI5_HEADERS_DIR=$NDI5_SDK_DIR/include
#NDI5_LICENSE_FILE=libndi_licenses.txt

echo "creating the framework $DEST_DIR/${LIBRARY_NAME}.xcframework"
echo "for library version ${LIBRARY_VERSION}"

rm -rf $DEST_DIR/${LIBRARY_NAME}.xcframework

#xcodebuild -create-xcframework -library "${NDI5_SDK_DIR}/${NDI5_LIB_DIR}/${NDI5_LIB}" -headers "${NDI5_HEADERS_DIR}" -output $DEST_DIR/${LIBRARY_NAME}.xcframework
xcodebuild -create-xcframework -library "${SOURCE_SDK_DIR}/${LIB_DIR}/${LIB_FILE}.${LIBRARY_VERSION}.dylib" -headers "${HEADERS_DIR}" -output $DEST_DIR/${LIBRARY_NAME}.xcframework

# copy license file
#cp -f "${SOUCE_SDK_DIR}/${LIB_DIR}/${NDI5_LICENSE_FILE}" $DEST_DIR/${LIBRARY_NAME}.xcframework/macos-arm64_x86_64/

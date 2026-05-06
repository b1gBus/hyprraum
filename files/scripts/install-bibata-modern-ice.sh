#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

DOWNLOAD_PATH="https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.7/Bibata-Modern-Classic.tar.xz"
FILE_NAME=$(basename ${DOWNLOAD_PATH})
TARGET_PATH="/usr/share/icons"
PWD=$(pwd)

# Your code goes here.
echo "Install $FILE_NAME"
echo "into $TARGET_PATH"

echo "Downloading $FILE_NAME"
curl -OL $DOWNLOAD_PATH

if [ -d "$TARGET_PATH" ]; then
  echo "Extracting $FILE_NAME"
  tar -C $TARGET_PATH -xf $FILE_NAME
  echo "Done. Cleaning up."
  rm $FILE_NAME
fi

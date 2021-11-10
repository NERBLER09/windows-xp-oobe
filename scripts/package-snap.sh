#!/usr/bin/bash

echo "Checking if you are signed in to Snapcraft.io"
snapcraft login
echo "You are loged in"
cd $PWD
rm -rf $PWD/dist &
echo "Packaging app"
electron-builder --linux
echo "Uploading snap"
snapcraft upload --release stable ./dist/*.snap
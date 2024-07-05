#!/bin/bash


appname=$(cat my-package/DEBIAN/control | grep Package | awk  '{print $2}')
appversion=$(cat my-package/DEBIAN/control | grep Version | awk  '{print $2}')
arch="amd64"

debname="${appname}_${appversion}_${arch}.deb"

echo "pakcage app: "${debname}
mkdir output
dpkg -b my-package/ output/${debname}

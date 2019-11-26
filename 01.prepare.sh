#!/bin/sh
#This instructions are based on the README at following location https://github.com/stephaneguindon/phyml

rm -rf sources
mkdir sources && cd sources

#Download the latest releasea from https://github.com/stephaneguindon/phyml/releases
wget -O phyml.tar.gz https://github.com/stephaneguindon/phyml/archive/v3.3.20190909.tar.gz

tar xfvz phyml.tar.gz

#prepare directory
cd phyml-3.3.20190909

sh ./autogen.sh;
./configure --enable-win --enable-phyml
mingw32-make

rm -rf ../../release
mkdir ../../release
cp src/phyml ../../release/



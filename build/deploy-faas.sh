#! /bin/sh
mkdir temp_web
npm run deploy:build
cd temp_web
git clone --depth 1 -b gh-pages --single-branch https://github.com/hvpaiva/leafkit.git && cd leafkit

# build sub folder
SUB_FOLDER='2.4'
mkdir $SUB_FOLDER
rm -rf *.js *.css *.map static
rm -rf $SUB_FOLDER/**
cp -rf ../../examples/leafkit/** .
cp -rf ../../examples/leafkit/** $SUB_FOLDER/
cd ../..

# deploy domestic site
faas deploy alpha
rm -rf temp_web
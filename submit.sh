#!/bin/sh
rm npm.zip 2> /dev/null
haxe build.hxml
rm -f docs/offline.zip
zip -r npm.zip hxml src test docs extraParams.hxml haxelib.json LICENSE README.md -x "*/\.*"
haxelib submit npm.zip
./generate.sh

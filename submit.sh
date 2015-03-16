#!/bin/sh
rm npm.zip 2> /dev/null
zip -r npm.zip hxml src test extraParams.hxml haxelib.json LICENSE README.md
haxelib submit npm.zip
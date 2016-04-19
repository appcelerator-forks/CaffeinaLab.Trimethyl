#!/bin/sh

if [ -z "$1" ]; then
	echo "Invalid argument"
	exit
fi


npm run test &&
npm version $1 && 
npm publish && 
git push && 
git push --tags &&
npm run gendoc
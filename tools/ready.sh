#!/bin/bash
cd ..

PROJDIR=`pwd`
INSTDIR='/Library/Input Methods'
title='Gureum'
appname="$title.app"
ARCHIVE_PATH="build/$title.xcarchive"
pkgname=`git tag | tail -n 1`

if [ ! $CONFIGURATION ]; then
	CONFIGURATION='Debug'
fi

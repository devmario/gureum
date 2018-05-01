#!/bin/bash
. ready.sh

xcodebuild archive -workspace 'Gureum.xcworkspace' -scheme 'OSX' -configuration 'Debug' -archivePath "$ARCHIVE_PATH" && \
cd "$ARCHIVE_PATH/Products$INSTDIR" && \
sudo rm -rf "$INSTDIR/$appname" && \
sudo cp -R "$appname" "$INSTDIR/"
sudo killall -15 Gureum

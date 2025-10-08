#!/usr/bin/env bash
set -e
echo "This script will create a Cordova project, add Android platform and build an APK.
Make sure you have: node, npm, cordova, Java JDK, Android SDK (ANDROID_HOME) installed.
Run from this script's parent directory.">
PROJECT_DIR=AeonforgeLiteApp_build
rm -rf "$PROJECT_DIR"
mkdir "$PROJECT_DIR"
cd "$PROJECT_DIR"
cordova create . com.aeonforge.lite "Aeonforge Lite"
# copy project www from parent folder (this package)
cp -r ../www ./www
cd .
cordova platform add android
cordova build android --release
echo "Build finished. APK located under platforms/android/app/build/outputs/apk/release/ (app-release-unsigned.apk)"

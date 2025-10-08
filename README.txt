
Aeonforge Lite - Cordova Project Package
---------------------------------------

This archive contains a ready-to-build Cordova project skeleton:

Structure:
  /www/
    index.html        <- wrapper that loads aeonforge_lite.html
    aeonforge_lite.html  <- the single-file playable game (open in browser to test)
  config.xml
  build.sh            <- helper script (macOS/Linux) to create Cordova project and build APK
  build_windows.bat   <- helper script (Windows) to create Cordova project and build APK
  README.txt          <- this file

IMPORTANT: I cannot build an APK in this environment because the Android SDK / Java JDK and Cordova CLI are not available here.
So I prepared this package so you can build locally. Steps to build on your machine:

1) Install prerequisites:
   - Node.js + npm (https://nodejs.org/)
   - Java JDK 11+ (OpenJDK or Oracle)
   - Android Studio (for SDK & platform tools). Ensure ANDROID_HOME is set and SDK tools are on PATH.
   - Cordova CLI: npm install -g cordova

2) Unzip this package to a folder. Open terminal/PowerShell in that folder.

3) Test the HTML locally first:
   - Open www/aeonforge_lite.html in your mobile browser (or desktop) to verify the game works.

4) Build with helper script (macOS/Linux):
   - chmod +x build.sh
   - ./build.sh
   or on Windows:
   - build_windows.bat

5) After successful build the unsigned APK will be at:
   platforms/android/app/build/outputs/apk/release/app-release-unsigned.apk
   For quick testing you can install the debug APK using:
   adb install -r platforms/android/app/build/outputs/apk/debug/app-debug.apk

6) Signing (to distribute) and aligning steps are required for Play Store release. See official Cordova docs or I can provide signing commands.

If you want, I can also create a Git repository structure and provide exact commands to build on GitHub Actions (CI) and produce an APK automatically on push. Tell me if you want that next.

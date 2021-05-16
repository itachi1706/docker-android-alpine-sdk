Alpine Android SDK Docker Image
---
This contains basic alpine-based Android Docker Images with NDK

# Versions
Note: Non `no-ndk` images will have NDK 22.1.7171670 installed by default and comes with their corresponding versions of build tools

* Android 9: `android-28_bt-28.0.3`
* Android 10: `android-29_bt-29.0.2`
* Android 11: `android-30_bt-30.0.3`

# Directory Structure
The repository directory structure is that it is split by Android version, then by Build Tools version. Finally in each build tools version folder there are 2 Dockerfiles, 1 for NDK build, 1 for non-NDK builds

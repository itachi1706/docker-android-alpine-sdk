Alpine Android SDK Docker Image
---
This contains basic alpine-based Android Docker Images with NDK. Only the last 3 Android SDK + Build Tools combination are officially supported and consistently updated and they will be tagged with the `bt-latest` or `bt-latest_no-ndk` tag accordingly based on whether you wish to have NDK installed or not and is built directly on DockerHub.

# Versions
Note: Non NDK images will have `_no-ndk` appended on it. NDK images will have NDK 22.1.7171670 installed by default and comes with their corresponding versions of build tools

## Latest Supported Versions
* Android 13: `android-33_bt-latest` 
* Android 12L: `android-32_bt-latest`
* Android 12: `android-31_bt-latest`
* Android 11: `android-30_bt-latest` (Will be deprecated on 2022-12-31)   
* Android 10: `android-29_bt-latest` (Will be deprecated on 2022-12-31)  
* Android 9 (Pie): `android-28_bt-latest` (Will be deprecated on 2022-12-31)  

## Other Versions
* Android 13: `android-33_bt-33.0.0`
* Android 12L: `android-32_bt-32.0.0`
* Android 12: `android-31_bt-31.0.0`
* Android 11: `android-30_bt-30.0.3`, `android-30_bt-30.0.2`, `android-30_bt-30.0.1`, `android-30_bt-30.0.0`
* Android 10: `android-29_bt-29.0.3`, `android-29_bt-29.0.2`, `android-29_bt-29.0.1`, `android-29_bt-29.0.0`
* Android 9 (Pie): `android-28_bt-28.0.3`, `android-28_bt-28.0.2`, `android-28_bt-28.0.1`, `android-28_bt-28.0.0`
* Android 8.1 (Oreo): `android-27_bt-27.0.3`, `android-27_bt-27.0.2`, `android-27_bt-27.0.1`, `android-27_bt-27.0.0`
* Android 8.0 (Oreo): `android-26_bt-26.0.3`, `android-26_bt-26.0.2`, `android-26_bt-26.0.1`, `android-26_bt-26.0.0`
* Android 7.1 (Nougat): `android-25_bt-25.0.3`, `android-25_bt-25.0.2`, `android-25_bt-25.0.1`, `android-25_bt-25.0.0`
* Android 7.0 (Nougat): `android-24_bt-24.0.3`, `android-24_bt-24.0.2`, `android-24_bt-24.0.1`, `android-24_bt-24.0.0`
* Android 6.0 (Marshmallow): `android-23_bt-23.0.3`, `android-23_bt-23.0.2`, `android-23_bt-23.0.1`
* Older Releases: `android-22_bt-22.0.1`, `android-21_bt-21.1.2`, `android-20_bt-20.0.0`, `android-19_bt-19.1.0`


# Directory Structure
The repository directory structure is that it is split by Android version, then by Build Tools version. Finally in each build tools version folder there are 2 Dockerfiles, 1 for NDK build, 1 for non-NDK builds for the latest of the past 3 versions. Subsequent ones are moved to a `history` and `history-nondk` folder to be automatically built in the background by GitHub Actions

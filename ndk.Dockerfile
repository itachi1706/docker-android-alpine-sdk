FROM itachi1706/android-alpine-sdk:base

RUN echo y | $ANDROID_HOME/cmdline-tools/tools/bin/sdkmanager "ndk;22.1.7171670" >/dev/null
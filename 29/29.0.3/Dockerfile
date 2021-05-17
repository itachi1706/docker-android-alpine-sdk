FROM itachi1706/android-alpine-sdk:base-ndk

ENV ANDROID_HOME=/usr/local/android-sdk
ENV COMPILE_SDK=29 BUILD_TOOLS=29.0.3


RUN echo y | $ANDROID_HOME/cmdline-tools/tools/bin/sdkmanager "platforms;android-${COMPILE_SDK}" >/dev/null
RUN echo y | $ANDROID_HOME/cmdline-tools/tools/bin/sdkmanager "build-tools;${BUILD_TOOLS}" >/dev/null

WORKDIR /opt
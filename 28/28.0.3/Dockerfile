FROM itachi1706/android-alpine-sdk:base-ndk

ENV ANDROID_HOME=/usr/local/android-sdk
ENV COMPILE_SDK=28 BUILD_TOOLS=28.0.3


RUN echo y | sdkmanager "platforms;android-${COMPILE_SDK}" >/dev/null
RUN echo y | sdkmanager "build-tools;${BUILD_TOOLS}" >/dev/null

WORKDIR /opt
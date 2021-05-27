FROM itachi1706/android-alpine-sdk:base

ARG COMPILE_SDK
ARG BUILD_TOOLS

ENV ANDROID_HOME=/usr/local/android-sdk

RUN echo y | sdkmanager "platforms;android-${COMPILE_SDK}" >/dev/null
RUN echo y | sdkmanager "build-tools;${BUILD_TOOLS}" >/dev/null

WORKDIR /opt
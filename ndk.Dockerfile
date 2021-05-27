FROM itachi1706/android-alpine-sdk:base

RUN echo y | sdkmanager "ndk;22.1.7171670" >/dev/null
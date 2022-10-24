FROM itachi1706/android-alpine-sdk:base

RUN echo y | sdkmanager "ndk;25.1.8937393" >/dev/null

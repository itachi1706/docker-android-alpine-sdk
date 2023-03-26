FROM itachi1706/android-alpine-sdk:base

RUN echo y | sdkmanager "ndk;25.2.9519653" >/dev/null

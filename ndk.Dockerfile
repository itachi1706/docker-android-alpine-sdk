FROM itachi1706/android-alpine-sdk:base

RUN echo y | sdkmanager "ndk;23.0.7599858" >/dev/null
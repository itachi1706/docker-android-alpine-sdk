FROM eclipse-temurin:11-jdk-alpine

ENV ANDROID_SDK_TOOLS=9477386 ANDROID_HOME=/usr/local/android-sdk GLIBC_VERSION=2.34-r0

WORKDIR /usr/local/glibc
RUN apk --no-cache add ca-certificates wget unzip && \
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-${GLIBC_VERSION}.apk && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-bin-${GLIBC_VERSION}.apk && \
    apk add --force-overwrite glibc-${GLIBC_VERSION}.apk glibc-bin-${GLIBC_VERSION}.apk && \
    apk fix --force-overwrite alpine-baselayout-data && \
    mkdir ${ANDROID_HOME}

WORKDIR $ANDROID_HOME/cmdline-tools
RUN wget -q -O sdk.zip https://dl.google.com/android/repository/commandlinetools-linux-${ANDROID_SDK_TOOLS}_latest.zip && \
    unzip -q sdk.zip && \
    mv cmdline-tools latest && \
    mkdir -p /root/.android && \
    touch /root/.android/repositories.cfg && \
    rm sdk.zip
WORKDIR $ANDROID_HOME

ENV PATH="$ANDROID_HOME/cmdline-tools/latest/bin:${PATH}"
RUN yes | sdkmanager --licenses
RUN echo y | sdkmanager "platform-tools" >/dev/null

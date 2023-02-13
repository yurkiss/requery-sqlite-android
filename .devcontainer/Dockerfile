# FROM mcr.microsoft.com/devcontainers/cpp:0-ubuntu-22.04
#
# ARG REINSTALL_CMAKE_VERSION_FROM_SOURCE="3.22.2"
#
# # Optionally install the cmake for vcpkg
# COPY ./reinstall-cmake.sh /tmp/
#
# RUN if [ "${REINSTALL_CMAKE_VERSION_FROM_SOURCE}" != "none" ]; then \
#         chmod +x /tmp/reinstall-cmake.sh && /tmp/reinstall-cmake.sh ${REINSTALL_CMAKE_VERSION_FROM_SOURCE}; \
#     fi \
#     && rm -f /tmp/reinstall-cmake.sh

# [Optional] Uncomment this section to install additional vcpkg ports.
# RUN su vscode -c "${VCPKG_ROOT}/vcpkg install <your-port-name-here>"

# [Optional] Uncomment this section to install additional packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>


FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive

ARG SDK_VERSION=33.0.1
ENV ANDROID_HOME      /opt/android-sdk-linux
ENV ANDROID_SDK_HOME  ${ANDROID_HOME}
ENV ANDROID_SDK_ROOT  ${ANDROID_HOME}
ENV ANDROID_SDK       ${ANDROID_HOME}

ENV PATH "${PATH}:${ANDROID_HOME}/cmdline-tools/latest/bin"
ENV PATH "${PATH}:${ANDROID_HOME}/cmdline-tools/tools/bin"
ENV PATH "${PATH}:${ANDROID_HOME}/tools/bin"
ENV PATH "${PATH}:${ANDROID_HOME}/build-tools/${SDK_VERSION}"
ENV PATH "${PATH}:${ANDROID_HOME}/platform-tools"
# ENV PATH "${PATH}:${ANDROID_HOME}/emulator"
ENV PATH "${PATH}:${ANDROID_HOME}/bin"

RUN dpkg --add-architecture i386
RUN apt-get update -yqq
RUN apt-get install -y \
  curl \
  expect \
  git \
  make \
  openjdk-17-jdk \
  wget \
  unzip \
  vim \
  openssh-client \
  locales \
  bsdtar \
  clang

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

ENV LANG en_US.UTF-8

RUN groupadd android && useradd -d /opt/android-sdk-linux -g android android

COPY tools /opt/tools
COPY licenses /opt/licenses

WORKDIR /opt/android-sdk-linux

RUN /opt/tools/entrypoint.sh built-in

RUN /opt/android-sdk-linux/cmdline-tools/tools/bin/sdkmanager "cmdline-tools;latest"
RUN /opt/android-sdk-linux/cmdline-tools/tools/bin/sdkmanager "build-tools;${SDK_VERSION}"
RUN /opt/android-sdk-linux/cmdline-tools/tools/bin/sdkmanager "platform-tools"
RUN /opt/android-sdk-linux/cmdline-tools/tools/bin/sdkmanager "platforms;android-33"
RUN /opt/android-sdk-linux/cmdline-tools/tools/bin/sdkmanager "cmake;3.22.1"
RUN /opt/android-sdk-linux/cmdline-tools/tools/bin/sdkmanager "ndk;22.1.7171670"
# RUN /opt/android-sdk-linux/cmdline-tools/tools/bin/sdkmanager "system-images;android-30;google_apis;x86_64"

CMD /opt/tools/entrypoint.sh built-in
# dockerfile

TX200C编译环境

```docker
FROM ubuntu:14.04
RUN apt update && apt install -y make git g++ lib32stdc++6 libncurses5-dev libssl-dev ncurses-term bc zip
ENV PATH="/opt/aarch64-himix100-linux/bin:/opt/gcc-arm-none-eabi-4_9-2015q3/bin:${PATH}"
RUN echo "dash dash/sh boolean false" | debconf-set-selections
RUN DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash
COPY mkimage /usr/bin/
CMD ["/bin/bash"]
```

ubuntu14.04安卓编译环境

```docker
FROM ubuntu:14.04
RUN apt-get update && apt-get -y install git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 libncurses5 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev libgl1-mesa-dev libxml2-utils xsltproc unzip python bc openjdk-7-jdk

```

ubuntu18.04安卓编译环境

```docker
FROM ubuntu:18.04
RUN apt-get update && apt-get install -y bison build-essential curl flex g++-multilib gcc-multilib gnupg gperf lib32z-dev lib32z1 libc6-dev-i386 libgl1-mesa-dev libncurses5 lib32ncurses5-dev libssl-dev libx11-dev libxml2-utils m4 unzip x11proto-core-dev xsltproc zip zlib1g-dev bsdmainutils cgpt libswitch-perl bc rsync xxd git-core parallel python openjdk-8-jdk
```

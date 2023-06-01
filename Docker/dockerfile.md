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

```dockerfile
FROM ubuntu:14.04
RUN apt-get update && apt-get -y install git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 libncurses5 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev libgl1-mesa-dev libxml2-utils xsltproc unzip python bc openjdk-7-jdk

```

ubuntu18.04安卓编译环境

```docker
FROM ubuntu:18.04
RUN apt-get update && apt-get install -y bison build-essential curl flex g++-multilib gcc-multilib gnupg gperf lib32z-dev lib32z1 libc6-dev-i386 libgl1-mesa-dev libncurses5 lib32ncurses5-dev libssl-dev libx11-dev libxml2-utils m4 unzip x11proto-core-dev xsltproc zip zlib1g-dev bsdmainutils cgpt libswitch-perl bc rsync xxd git-core parallel python openjdk-8-jdk
```



```
FROM ubuntu:20.04
RUN apt-get update && apt-get install -y bison build-essential curl flex g++-multilib gcc-multilib gnupg gperf lib32z-dev lib32z1 libc6-dev-i386 libgl1-mesa-dev libncurses5 lib32ncurses5-dev libssl-dev libx11-dev libxml2-utils m4 unzip x11proto-core-dev xsltproc zip zlib1g-dev bsdmainutils cgpt libswitch-perl bc rsync xxd git-core parallel python openjdk-8-jdk
```


Ubuntu 20.04服务器编译环境

```dockerfile
FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y openssh-server bison build-essential curl flex g++-multilib gcc-multilib gnupg gperf lib32z-dev lib32z1 libc6-dev-i386 libgl1-mesa-dev libncurses5 lib32ncurses5-dev libssl-dev libx11-dev libxml2-utils m4 unzip x11proto-core-dev xsltproc zip zlib1g-dev bsdmainutils cgpt libswitch-perl bc rsync xxd git-core parallel python openjdk-8-jdk
RUN mkdir /run/sshd;echo 'root:123456' | chpasswd;sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config;sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/' /etc/ssh/sshd_config
RUN git config --global color.ui true;git config --global pull.rebase true ;git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
ADD repo /usr/bin/
ADD repo_mtk.git /opt/repo_mtk.git
CMD ["/usr/sbin/sshd", "-D"]
```


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

spflashtool

```dockerfile
FROM --platform=linux/amd64 ubuntu:focal
RUN apt-get update && apt-get install -y libxrender1 libfontconfig1 libxext6 libglib2.0-0 libsm6
ADD SP_Flash_Tool_v5.2228_Linux /tool/
WORKDIR /tool
```

```
docker run --name chatgpt-web -d -p 3002:3002 --env OPENAI_ACCESS_TOKEN=eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6Ik1UaEVOVUpHTkVNMVFURTRNMEZCTWpkQ05UZzVNRFUxUlRVd1FVSkRNRU13UmtGRVFrRXpSZyJ9.eyJodHRwczovL2FwaS5vcGVuYWkuY29tL3Byb2ZpbGUiOnsiZW1haWwiOiJrbmJrNzI2QHZhcm5ldC5hc2lhIiwiZW1haWxfdmVyaWZpZWQiOnRydWV9LCJodHRwczovL2FwaS5vcGVuYWkuY29tL2F1dGgiOnsidXNlcl9pZCI6InVzZXItRHNOR1dWRzF6aG5pSW04WmdSdTd3M01OIn0sImlzcyI6Imh0dHBzOi8vYXV0aDAub3BlbmFpLmNvbS8iLCJzdWIiOiJhdXRoMHw2MzhkOGViYjNhMjRjMTRkYzk1MGNiYTQiLCJhdWQiOlsiaHR0cHM6Ly9hcGkub3BlbmFpLmNvbS92MSIsImh0dHBzOi8vb3BlbmFpLm9wZW5haS5hdXRoMGFwcC5jb20vdXNlcmluZm8iXSwiaWF0IjoxNjg4OTc0MzU3LCJleHAiOjE2OTAxODM5NTcsImF6cCI6IlRkSkljYmUxNldvVEh0Tjk1bnl5d2g1RTR5T282SXRHIiwic2NvcGUiOiJvcGVuaWQgcHJvZmlsZSBlbWFpbCBtb2RlbC5yZWFkIG1vZGVsLnJlcXVlc3Qgb3JnYW5pemF0aW9uLnJlYWQgb3JnYW5pemF0aW9uLndyaXRlIn0.EIOwsVkXfRsbrVBsdp-eHmwHy74eIcYdkCwZFtmYQ1vTbgtaLUaN2dC_zowhe4YApqZVcqo4dRxCHLpkxyqR8b9fGXqIs6RIX1fFSqKQ8HnVC_KTmyIocbB2KLX3f-YFMAFsSHPxJcgQVN8FBxl_M0yleBjfT43CWvaf-WLcC1rHOZlhnsBo9kFkhV0t96JqJTg0K9cCAZ3Xxb7RddOv10p2LiZFBvPATNXnPN-Bwd3yvEe7fKef8gVhn_fAmlx32jcfb637J2kk7E5XMHi76kLgmgRhHpb7yupdmnvJdu8MV44H6gVWhVASmUuDRPuL2Jveh79749Ofgs8hsWEm7w chatgpt-web
```


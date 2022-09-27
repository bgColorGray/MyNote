# 使用docker编译TX200C

# 下载镜像

```bash
docker pull bgcol/elinkbuild:200v1
```

该镜像使用的包make git g++ lib32stdc++6 libncurses5-dev libssl-dev ncurses-term bc zip。基本为最轻量化安装。

# 使用镜像

### 进入镜像、挂载源代码和编译工具

> 👉<>内的内容按照提示替换

```bash
docker run -it -v <本地项目目录>:<容器内目录> \
-v <aarch64工具链目录>:/opt/aarch64-himix100-linux \
-v <gcc-arm工具链目录>:/opt/gcc-arm-none-eabi-4_9-2015q3 \
<镜像ID> /bin/bash

```

**示例：**

```bash
docker run -it -v /home/bgcol/Android/Clean/Hi3559AV100_SDK_V2.0.3.0_V02:/tx200c \
-v /opt/hisi-linux/x86-arm/aarch64-himix100-linux:/opt/aarch64-himix100-linux \
-v /opt/hisi-linux/x86-arm/gcc-arm-none-eabi-4_9-2015q3:/opt/gcc-arm-none-eabi-4_9-2015q3 \
-v /home/bgcol/.ssh:/root/.ssh \
2afb856772a7 /bin/bash
```

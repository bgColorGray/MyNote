
# docker命令

# docker安装

```bash
apt install docker.io
sudo usermod -aG docker <enter_username>
sudo reboot
#测试是否安装成功
docker run -it hello-world

```

### 查看所有命令

```bash
docker --help
```

### 在运行映像之前，必须允许 Docker 连接到 X server：

```bash
xhost + local:docker
```

### docker命令格式

**Usage:  docker \[OPTIONS] COMMAND**

### 获取镜像

```bash
docker pull ubuntu:14.04
```

**参数说明：**

*   pull ：下载镜像

*   ubuntu ：镜像名字

*   14.04 ：版本，为空下载最新镜像

### 查看所有镜像

```bash
docker images
```

### 删除镜像

```bash
docker rmi <镜像id>
```

# 容器使用

### 查看运行中的容器

```bash
docker ps
```

### 删除容器

```bash
docker rm <容器id>
```

### 启动容器

```bash
docker run -it ubuntu /bin/bash
```

**参数说明：**

*   **-i**: 交互式操作。

*   **-t**: 终端。

*   **ubuntu**: ubuntu 镜像。

*   **/bin/bash**：放在镜像名后的是命令，这里我们希望有个交互式 Shell，因此用的是 /bin/bash。

### 退出容器

```bash
exit
```

### 查看所有容器

```bash
docker ps -a
```

### 启动一个已停止的容器：

```bash
docker start <容器ID>
```

### 停止一个容器

```bash
docker stop <容器ID>
```

### 重启容器：

```bash
docker restart <容器ID>
```

### 进入容器

在使用 **-d** 参数时，容器启动后会进入后台。此时想要进入容器，可以通过以下指令进入：

*   **docker attach** ：进入上次的终端

*   **docker exec**：使用此命令，在退出容器时，不会导致容器停止。

### attach 命令

下面演示了使用 docker attach 命令。

```bash
docker attach <容器ID>
```

### exec 命令

```bash
docker exec -it <容器ID> /bin/bash
```

**注意：** 如果从这个容器退出，容器不会停止，这就是为什么推荐大家使用 **docker exec** 的原因。

更多参数说明请使用 docker exec --help 命令查看。

### 将容器打包为镜像commit

```bash
docker commit -m "tool install" -a "bgcol" 7ada2a9d085a bgcol/ubuntu:build_L
```

参数说明：

*   **-m:** 提交的描述信息

*   **-a:** 指定镜像作者

*   **7ada2a9d085a：** 容器 ID

*   **bgcol/ubuntu:build\_L:** 指定要创建的目标镜像名

### 构建镜像

```bash
docker build -f <dockerfile> -t <image_name>:<tag> .
```

### 创建容器

```
docker run -itd -p 2201:22 -h pengyujie --name pengyujie -v /intel_p5510/Project:/root/Project aa304c218870
```

```
#!/bin/bash

# 用户与端口的对应关系
declare -A port_map=(
    ["user1"]=2201
    ["user2"]=2202
    ["user3"]=2203
)

# 循环遍历用户列表
for user in "${!port_map[@]}"
do
    # 获取用户对应的端口号
    port="${port_map[$user]}"
    
    # 创建容器，将指定的端口号分配给容器
    docker run -itd -p "$port":22 -h "$user" --name "$user" -v "/pool/$user:/root/$user" your_image_name
    
    # 打印端口与用户的对应关系
    echo "User: $user, Port: $port"
done

```

### 添加密钥

```
scp -P 2201 -r ~/.ssh root@172.20.101.58:~/
```

### 添加公钥认证

```
ssh root@172.20.101.58 -p 2201 'cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys'
```


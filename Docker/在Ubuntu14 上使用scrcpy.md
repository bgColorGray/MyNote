# 在Ubuntu14 上使用scrcpy

# 一、安装docker

```bash
sudo apt install docker.io
#将用户添加到组
sudo groupadd docker
sudo usermod -aG docker <enter_username>
sudo reboot
#测试docker是否可用
docker run hello-world
```

# 二、Docker 镜像来运行scrcpy

#### 1.在运行映像之前，必须允许 Docker 连接到 X server：

```bash
xhost + local:docker
```

#### 2.已经为AMD，Intel和Nvidia图形硬件构建了一个单独的映像。要获取硬件的映像，只需追加到图形类型可以位于的图像名称 （） 中：:\<graphics type>pierlo1/scrcpy

*   amd

*   intel

*   nvidia

例如：pierlo1/scrcpy:intel

```bash
docker pull pierlo1/scrcpy:<graphics_type>
```

#### 3.使用 Docker 运行映像

```bash
docker run --rm -i -t --privileged \
  -v /dev/bus/usb:/dev/bus/usb \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=$DISPLAY \
  pierlo1/scrcpy:<graphics type>
```

#### 4.运行 scrcpy

在容器内，验证您是否可以看到您的 Android 设备：

```bash
adb devices
```

注意：请确保 adb 守护程序未在主机 （） 上运行，以查看容器中的设备。adb kill-server

最后，运行：scrcpy

```bash
scrcpy [options]
```

# 三、常见问题

1.  VMware中的Ubuntu在运行scrcpy时，程序闪退。VMware: vmw\_ioctl\_command error 无效的参数.

```bash
export SVGA_VGPU10=0
```

# 四、Links

<https://hub.docker.com/r/pierlo1/scrcpy>

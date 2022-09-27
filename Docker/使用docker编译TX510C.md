# 使用docker编译TX510C

下载镜像

```bash
docker pull bgcol/elinkbuild:14.04_android
```

运行镜像并挂载代码目录

```bash
docker run -it -v <本地代码路径>:<容器内代码路径> c2c2c80f2774
#示例 docker run -it -v /media/root/HDD/TX510C:/510 c2c2c80f2774

```

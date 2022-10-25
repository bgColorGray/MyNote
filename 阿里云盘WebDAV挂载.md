# 阿里云盘WebDAV挂载

使用github开源项目[aliyundrive-webdav](https://github.com/messense/aliyundrive-webdav "aliyundrive-webdav")

### 1、linux使用方法

启动webdav

```bash
sudo apt install aliyundrive-webdav
aliyundrive-webdav --auto-index --auth-user bgcol --auth-password 112138 --refresh-token ****** --port 23333 --read-only

```

挂载webdav

```bash
sudo apt install davfs2
sudo mount -t davfs http://127.0.0.1:23333 ./
```

### 2、windows使用方法

启动webdav

```powershell
.\aliyundrive-webdav --auto-index --auth-user bgcol --auth-password 112138 --refresh-token ******* --port 23333
```

使用[RaiDrive](www.raidrive.com "RaiDrive")挂载

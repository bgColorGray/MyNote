# ZFS文件系统

##### 引用

- [https://docs.oracle.com/cd/E56344\_01/html/E54077/zpool-1m.html#](https://docs.oracle.com/cd/E56344_01/html/E54077/zpool-1m.html# "https://docs.oracle.com/cd/E56344_01/html/E54077/zpool-1m.html#")

- [https://docs.oracle.com/cd/E56344\_01/html/E54077/zfs-1m.html#scrolltoc](https://docs.oracle.com/cd/E56344_01/html/E54077/zfs-1m.html#scrolltoc "https://docs.oracle.com/cd/E56344_01/html/E54077/zfs-1m.html#scrolltoc")

- https://openzfs.github.io/openzfs-docs/man/8/zpool.8.html

- https://openzfs.github.io/openzfs-docs/man/8/zfs.8.html

**示例 1** 创建 RAID-Z 存储池

以下命令创建一个池，其中包含由四个磁盘组成的单个 raidz 根 vdev。

```bash
zpool create pool raidz sda sdb sdc sdd cache nvme0n1
```

**示例 2** 将磁盘添加到 ZFS 存储池

以下命令将两个磁盘添加到池pool中。增加的空间可立即供池中的任何数据集使用。

```bash
zpool add pool sde sdf
```

**实例3 **将热备件添加到池

```bash
zpool add pool spare sdg
```

如果其中的一个磁盘发生故障，池会缩减至降级状态。可以使用以下命令替换故障设备：

```bash
zpool replace pool sda sdg
```

设备重新同步后，将自动分离备件，并使其在其他设备发生故障时可用。使用以下命令可将热备件从池中永久移除：

```bash
zpool remove pool sda
```

#### 查看池的运行状态

```bash
zpool status pool
```

#### 将高速缓存设备添加到 ZFS 池中

```bash
zpool add pool cache c2d0 c3d0
```

#### 销毁池

```bash
zpool destroy [–f] pool
```

#### 监视容量和IO

```bash
zpool iostat -v pool 1
```

### zfs

**示例 1** 创建 ZFS 文件系统分层结构

以下命令创建名为 pool/home 的文件系统和名为 pool/home/bob 的文件系统。对父文件系统设置挂载点 /export/home，子文件系统将自动继承该挂载点。

```纯文本
sudo zfs create pool/home
```

```纯文本
sudo zfs set mountpoint=/media/bgcol/pool pool/home
```

#### 导入池

```bash
sudo zpool import -F -d /dev/disk/by-id
sudo zpool import -F -d /dev/disk/by-id pool

```

#### 创建快照

```纯文本
now=$(date +"%Y-%m-%d_%H:%M:%S")
echo "123" | sudo zfs snapshot pool/home@"$now"
```

查看快照

```纯文本
zfs list -t snapshot
```

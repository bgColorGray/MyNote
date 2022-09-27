# 使用mdadm创建软raid

物理磁盘：/dev/sda1、/dev/sdb1、/dev/sdc1、/dev/sdd1

创建raid10

```bash
mdadm -C /dev/md10 -l 10 -n 4 /dev/sd[a-d]1
```

卸载、停止阵列

```bash
umount /dev/md10
mdadm -S /dev/md10
```

再次启动阵列

```bash
sudo mdadm -A /dev/md10 /dev/sd[a-d]1
```

查看阵列信息

```bash
sudo mdadm -D /dev/md10
```

例如模拟损坏/dev/md0磁盘阵列中的/dev/sdc &#x20;

```bash
mdadm /dev/md10 -f /dev/sda
```

这时再mdadm -D /dev/md10 查看/dev/md10磁盘阵列的状态信息

可以看到/dev/sda为faulty状态 &#x20;

这时我们加入一块修复盘/dev/sdd

```bash
mdadm /dev/md10 -a /dev/sdd
```

然后mdadm -D /dev/md0 查看/dev/md0磁盘阵列的状态信息

可以看到磁盘阵列正在重建rebuild，可以看到重建的完成进度 &#x20;

完成重建后移除故障盘

```bash
mdadm /dev/md0 -r /dev/sdc
```

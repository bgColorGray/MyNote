
# README
## 1、使用配置读取路径 
配置can.ini读取目录在设备/etc/can.ini

## 2、关联库描述
mqtt连接使用eclipse/paho.mqtt.c库，lib文件夹中，paho-mqtt3a为异步库，
paho-mqtt3as为支持ssl的异步库。在Makefile中默认使用3as库，编译不通过请检查系统编译环境。
不需要ssl的mqtt连接，使用3a库即可。

## 3、如何使用demo
`make clean && make`

编译失败请检查Makefile。交叉编译工具是否可用？是否正确链接到库路径？等等


## Releases
### 1.1.6

2022/10/11

动态订阅后动态推流逻辑在SDK中实现，外部需要动态推流功能，实现register_callback_media_switch即可。

* 删除：get_is_topic_default接口不方便使用和理解。
* 新增：main_can_task.h中添加register_callback_media_switch回调函数。

### 1.1.5

2022/9/29
* 修改：控车中具体档位改为手动升降档
* 新增：控车中增加换档杆，具体功能客户自行定义

### 1.1.4
2022/9/27
* 添加动态推流控制，见mqtt_client.h
* 添加动态推流状态获取，见mqtt_client.h

### 1.1.3
2022/8/29
* 将使能描述修改为车辆控制模式，在远程模式时可控车
* 补充了自动驾驶模式
* 淘汰了使能相关API

### 1.1.2
2022/8/18:
* 支持双路CAN接收和发送；

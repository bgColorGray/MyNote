# ADB命令

#### EVB平台回到桌面

```纯文本
adb shell am start -n com.bird.mmi_test/com.bird.mmi_test.activity.MainActivity
```

#### EVB安装APK

```bash
adb root
adb shell setprop persist.sys.dynamic.app 1
adb install ./app-fdroid_free-release.apk
adb reboot
```

#### EVB调试内置软件

Android.mk中添加

```bash
LOCAL_DEX_PREOPT:=false
```

```bash
adb root ; adb remount ; adb push out/target/product/ecarxICp1_64/system/app/EcarxRecorder/EcarxRecorder.apk system/app/EcarxRecorder/EcarxRecorder.apk ; adb reboot ; sleep 25 ;scrcpy &
```

```bash
sudo rm -r out/target/common/obj/APPS/EcarxRecorder_intermediates/
```

```bash
./mk -ud e02_5mc7ch_qjmt_1280x768_r32_4_p01_sn15_v02 mm packages/bird_app/EcarxRecorder/

```

```
adb root ; adb remount ; adb push out/target/product/ecarxICp1\_64/system/priv-app/AdapterAPITest/AdapterAPITest.apk system/priv-app/AdapterAPITest/AdapterAPITest.apk ; adb reboot ; sleep 25 ;scrcpy &
```

```
./mk -ud e02\_5mc7ch\_qjmt\_1280x768\_r32\_4\_p01\_sn15\_v02 mm ecarx/sdk/adapterAPITest/
```

#### push APK

```bash
adb root;adb remount;adb push out/target/product/k62v1_64_bsp/system/priv-app/HolyLauncher/HolyLauncher.apk /system/priv-app/HolyLauncher;adb reboot;adb logcat -G 4m;adb logcat | grep CarLauncher_Activity
```



#### 查找包名APK位置

```
adb shell pm path com.mediatek.filemanager
```

#### *查看*将要启动或退出*app*的*包名*

```
adb shell am monitor
```

#### 查看已安装的包名

```
adb shell pm list packages
```



#### QjLauncher

```
rm -r ./dwj/QjLauncher/ ; cp -r ../bird/mmi/sdudio_code/QjLauncher/ ./dwj/ ; ./mk -ud e02_5mc7ch_qjmt_1280x768_r32_4_p01_sn15_v02_c mm ./dwj/QjLauncher/
```

```
adb root ; adb remount ; adb push ./out/target/product/ecarxICp1_64/system/priv-app/QJLauncher/QJLauncher.apk /system/priv-app/QJLauncher/;adb reboot ;adb logcat -G 4m;
```

#### 修改设置单位

```bash
adb shell settings list global| grep unit
```

```bash
adb shell settings put global car_settings_unit_speed km/h
```



#### FTPServer调试

```
cd /intel_pool/Project/EVB/bird/mmi/sdudio_code/swiftp-master/app/fdroid_free/debug
```

```
mv ./app-fdroid_free-debug.apk FTPServer.apk;adb root;adb remount; adb push ./FTPServer.apk /system/priv-app/FTPServer/;adb reboot;adb logcat -G 4m;
```


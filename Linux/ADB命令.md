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

adb root ; adb remount ; adb push out/target/product/ecarxICp1\_64/system/priv-app/AdapterAPITest/AdapterAPITest.apk system/priv-app/AdapterAPITest/AdapterAPITest.apk ; adb reboot ; sleep 25 ;scrcpy &

./mk -ud e02\_5mc7ch\_qjmt\_1280x768\_r32\_4\_p01\_sn15\_v02 mm ecarx/sdk/adapterAPITest/

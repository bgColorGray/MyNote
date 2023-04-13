2023-03-31 18:15:20.475  1394-1394  AndroidRuntime          pid-1394                             E  FATAL EXCEPTION: main
                                                                                                    Process: com.qj.car.qjlauncher, PID: 1394
                                                                                                    java.lang.NullPointerException: Attempt to read from field 'int android.view.View.mPrivateFlags' on a null object reference
                                                                                                    	at android.view.ViewGroup.resetCancelNextUpFlag(ViewGroup.java:2812)
                                                                                                    	at android.view.ViewGroup.dispatchTouchEvent(ViewGroup.java:2717)
                                                                                                    	at android.view.ViewGroup.dispatchTransformedTouchEvent(ViewGroup.java:3030)
                                                                                                    	at android.view.ViewGroup.dispatchTouchEvent(ViewGroup.java:2719)
                                                                                                    	at android.view.ViewGroup.dispatchTransformedTouchEvent(ViewGroup.java:3030)
                                                                                                    	at android.view.ViewGroup.dispatchTouchEvent(ViewGroup.java:2719)
                                                                                                    	at android.view.ViewGroup.dispatchTransformedTouchEvent(ViewGroup.java:3030)
                                                                                                    	at android.view.ViewGroup.dispatchTouchEvent(ViewGroup.java:2719)
                                                                                                    	at android.view.ViewGroup.dispatchTransformedTouchEvent(ViewGroup.java:3030)
                                                                                                    	at android.view.ViewGroup.dispatchTouchEvent(ViewGroup.java:2719)
                                                                                                    	at android.view.ViewGroup.dispatchTransformedTouchEvent(ViewGroup.java:3030)
                                                                                                    	at android.view.ViewGroup.dispatchTouchEvent(ViewGroup.java:2719)
                                                                                                    	at com.android.internal.policy.DecorView.superDispatchTouchEvent(DecorView.java:440)
                                                                                                    	at com.android.internal.policy.PhoneWindow.superDispatchTouchEvent(PhoneWindow.java:1830)
                                                                                                    	at android.app.Activity.dispatchTouchEvent(Activity.java:3401)
                                                                                                    	at com.android.internal.policy.DecorView.dispatchTouchEvent(DecorView.java:398)
                                                                                                    	at android.view.View.dispatchPointerEvent(View.java:12790)
                                                                                                    	at android.view.ViewRootImpl$ViewPostImeInputStage.processPointerEvent(ViewRootImpl.java:5100)
                                                                                                    	at android.view.ViewRootImpl$ViewPostImeInputStage.onProcess(ViewRootImpl.java:4903)
                                                                                                    	at android.view.ViewRootImpl$InputStage.deliver(ViewRootImpl.java:4420)
                                                                                                    	at android.view.ViewRootImpl$InputStage.onDeliverToNext(ViewRootImpl.java:4473)
                                                                                                    	at android.view.ViewRootImpl$InputStage.forward(ViewRootImpl.java:4439)
                                                                                                    	at android.view.ViewRootImpl$AsyncInputStage.forward(ViewRootImpl.java:4579)
                                                                                                    	at android.view.ViewRootImpl$InputStage.apply(ViewRootImpl.java:4447)
                                                                                                    	at android.view.ViewRootImpl$AsyncInputStage.apply(ViewRootImpl.java:4636)
                                                                                                    	at android.view.ViewRootImpl$InputStage.deliver(ViewRootImpl.java:4420)
                                                                                                    	at android.view.ViewRootImpl$InputStage.onDeliverToNext(ViewRootImpl.java:4473)
                                                                                                    	at android.view.ViewRootImpl$InputStage.forward(ViewRootImpl.java:4439)
                                                                                                    	at android.view.ViewRootImpl$InputStage.apply(ViewRootImpl.java:4447)
                                                                                                    	at android.view.ViewRootImpl$InputStage.deliver(ViewRootImpl.java:4420)
                                                                                                    	at android.view.ViewRootImpl.deliverInputEvent(ViewRootImpl.java:7092)
                                                                                                    	at android.view.ViewRootImpl.doProcessInputEvents(ViewRootImpl.java:7061)
                                                                                                    	at android.view.ViewRootImpl.enqueueInputEvent(ViewRootImpl.java:7022)
                                                                                                    	at android.view.ViewRootImpl$WindowInputEventReceiver.onInputEvent(ViewRootImpl.java:7200)
                                                                                                    	at android.view.InputEventReceiver.dispatchInputEvent(InputEventReceiver.java:186)
                                                                                                    	at android.os.MessageQueue.nativePollOnce(Native Method)
                                                                                                    	at android.os.MessageQueue.next(MessageQueue.java:326)
                                                                                                    	at android.os.Looper.loop(Looper.java:160)
                                                                                                    	at android.app.ActivityThread.main(ActivityThread.java:6815)
                                                                                                    	at java.lang.reflect.Method.invoke(Native Method)
                                                                                                    	at com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run(RuntimeInit.java:493)
                                                                                                    	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:916)
2023-04-01 09:13:52.927 10279-10279 ViewRootIm...JLauncher] com.qj.car.qjlauncher                W  Dropping event due to no window focus: MotionEvent { action=ACTION_MOVE, actionButton=0, id[0]=0, x[0]=705.44885, y[0]=596.2237, toolType[0]=TOOL_TYPE_FINGER, buttonState=0, metaState=0, flags=0x2, edgeFlags=0x0, pointerCount=1, historySize=1, eventTime=61884843, downTime=61884721, deviceId=1, source=0x5002 }
2023-04-01 09:13:52.927 10279-10279 ViewRootIm...JLauncher] com.qj.car.qjlauncher                W  Cancelling event due to no window focus: MotionEvent { action=ACTION_CANCEL, actionButton=0, id[0]=0, x[0]=705.44885, y[0]=596.2237, toolType[0]=TOOL_TYPE_FINGER, buttonState=0, metaState=0, flags=0x2, edgeFlags=0x0, pointerCount=1, historySize=0, eventTime=61884858, downTime=61884721, deviceId=1, source=0x5002 }
2023-04-01 09:13:52.928 10279-10279 chatty                  com.qj.car.qjlauncher                I  uid=1000(system) com.qj.car.qjlauncher identical 2 lines
2023-04-01 09:13:52.929 10279-10279 ViewRootIm...JLauncher] com.qj.car.qjlauncher                W  Cancelling event due to no window focus: MotionEvent { action=ACTION_CANCEL, actionButton=0, id[0]=0, x[0]=705.44885, y[0]=596.2237, toolType[0]=TOOL_TYPE_FINGER, buttonState=0, metaState=0, flags=0x2, edgeFlags=0x0, pointerCount=1, historySize=0, eventTime=61884858, downTime=61884721, deviceId=1, source=0x5002 }
2023-04-01 13:09:28.719 10279-10279 ActivityThread          com.qj.car.qjlauncher                E  Activity com.qj.car.qjlauncher.QJLauncher has leaked IntentReceiver com.qj.car.qjlauncher.fragment.AppListFragment$AppInstallUninstallReceiver@9fd0b65 that was originally registered here. Are you missing a call to unregisterReceiver()?
                                                                                                    android.app.IntentReceiverLeaked: Activity com.qj.car.qjlauncher.QJLauncher has leaked IntentReceiver com.qj.car.qjlauncher.fragment.AppListFragment$AppInstallUninstallReceiver@9fd0b65 that was originally registered here. Are you missing a call to unregisterReceiver()?
                                                                                                    	at android.app.LoadedApk$ReceiverDispatcher.<init>(LoadedApk.java:1429)
                                                                                                    	at android.app.LoadedApk.getReceiverDispatcher(LoadedApk.java:1210)
                                                                                                    	at android.app.ContextImpl.registerReceiverInternal(ContextImpl.java:1476)
                                                                                                    	at android.app.ContextImpl.registerReceiver(ContextImpl.java:1449)
                                                                                                    	at android.app.ContextImpl.registerReceiver(ContextImpl.java:1437)
                                                                                                    	at android.content.ContextWrapper.registerReceiver(ContextWrapper.java:623)
                                                                                                    	at com.qj.car.qjlauncher.fragment.AppListFragment.onStart(AppListFragment.java:142)
                                                                                                    	at androidx.fragment.app.Fragment.performStart(Fragment.java:3021)
                                                                                                    	at androidx.fragment.app.FragmentStateManager.start(FragmentStateManager.java:589)
                                                                                                    	at androidx.fragment.app.FragmentStateManager.moveToExpectedState(FragmentStateManager.java:300)
                                                                                                    	at androidx.fragment.app.FragmentStore.moveToExpectedState(FragmentStore.java:112)
                                                                                                    	at androidx.fragment.app.FragmentManager.moveToState(FragmentManager.java:1647)
                                                                                                    	at androidx.fragment.app.FragmentManager.dispatchStateChange(FragmentManager.java:3128)
                                                                                                    	at androidx.fragment.app.FragmentManager.dispatchStart(FragmentManager.java:3079)
                                                                                                    	at androidx.fragment.app.FragmentController.dispatchStart(FragmentController.java:262)
                                                                                                    	at androidx.fragment.app.FragmentActivity.onStart(FragmentActivity.java:510)
                                                                                                    	at com.qj.car.qjlauncher.QJLauncher.onStart(QJLauncher.java:1634)
                                                                                                    	at android.app.Instrumentation.callActivityOnStart(Instrumentation.java:1391)
                                                                                                    	at android.app.Activity.performStart(Activity.java:7165)
                                                                                                    	at android.app.ActivityThread.handleStartActivity(ActivityThread.java:3058)
                                                                                                    	at android.app.servertransaction.TransactionExecutor.performLifecycleSequence(TransactionExecutor.java:180)
                                                                                                    	at android.app.servertransaction.TransactionExecutor.cycleToPath(TransactionExecutor.java:165)
                                                                                                    	at android.app.servertransaction.TransactionExecutor.executeLifecycleState(TransactionExecutor.java:142)
                                                                                                    	at android.app.servertransaction.TransactionExecutor.execute(TransactionExecutor.java:70)
                                                                                                    	at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1826)
                                                                                                    	at android.os.Handler.dispatchMessage(Handler.java:106)
                                                                                                    	at android.os.Looper.loop(Looper.java:193)
                                                                                                    	at android.app.ActivityThread.main(ActivityThread.java:6815)
                                                                                                    	at java.lang.reflect.Method.invoke(Native Method)
                                                                                                    	at com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run(RuntimeInit.java:493)
                                                                                                    	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:916)
2023-04-01 13:09:30.503 10279-10279 ActivityThread          com.qj.car.qjlauncher                E  Activity com.qj.car.qjlauncher.QJLauncher has leaked IntentReceiver com.qj.car.qjlauncher.fragment.AppListFragment$AppInstallUninstallReceiver@122c462 that was originally registered here. Are you missing a call to unregisterReceiver()?
                                                                                                    android.app.IntentReceiverLeaked: Activity com.qj.car.qjlauncher.QJLauncher has leaked IntentReceiver com.qj.car.qjlauncher.fragment.AppListFragment$AppInstallUninstallReceiver@122c462 that was originally registered here. Are you missing a call to unregisterReceiver()?
                                                                                                    	at android.app.LoadedApk$ReceiverDispatcher.<init>(LoadedApk.java:1429)
                                                                                                    	at android.app.LoadedApk.getReceiverDispatcher(LoadedApk.java:1210)
                                                                                                    	at android.app.ContextImpl.registerReceiverInternal(ContextImpl.java:1476)
                                                                                                    	at android.app.ContextImpl.registerReceiver(ContextImpl.java:1449)
                                                                                                    	at android.app.ContextImpl.registerReceiver(ContextImpl.java:1437)
                                                                                                    	at android.content.ContextWrapper.registerReceiver(ContextWrapper.java:623)
                                                                                                    	at com.qj.car.qjlauncher.fragment.AppListFragment.onStart(AppListFragment.java:142)
                                                                                                    	at androidx.fragment.app.Fragment.performStart(Fragment.java:3021)
                                                                                                    	at androidx.fragment.app.FragmentStateManager.start(FragmentStateManager.java:589)
                                                                                                    	at androidx.fragment.app.FragmentStateManager.moveToExpectedState(FragmentStateManager.java:300)
                                                                                                    	at androidx.fragment.app.FragmentStore.moveToExpectedState(FragmentStore.java:112)
                                                                                                    	at androidx.fragment.app.FragmentManager.moveToState(FragmentManager.java:1647)
                                                                                                    	at androidx.fragment.app.FragmentManager.dispatchStateChange(FragmentManager.java:3128)
                                                                                                    	at androidx.fragment.app.FragmentManager.dispatchStart(FragmentManager.java:3079)
                                                                                                    	at androidx.fragment.app.FragmentController.dispatchStart(FragmentController.java:262)
                                                                                                    	at androidx.fragment.app.FragmentActivity.onStart(FragmentActivity.java:510)
                                                                                                    	at com.qj.car.qjlauncher.QJLauncher.onStart(QJLauncher.java:1634)
                                                                                                    	at android.app.Instrumentation.callActivityOnStart(Instrumentation.java:1391)
                                                                                                    	at android.app.Activity.performStart(Activity.java:7165)
                                                                                                    	at android.app.ActivityThread.handleStartActivity(ActivityThread.java:3058)
                                                                                                    	at android.app.servertransaction.TransactionExecutor.performLifecycleSequence(TransactionExecutor.java:180)
                                                                                                    	at android.app.servertransaction.TransactionExecutor.cycleToPath(TransactionExecutor.java:165)
                                                                                                    	at android.app.servertransaction.TransactionExecutor.executeLifecycleState(TransactionExecutor.java:142)
                                                                                                    	at android.app.servertransaction.TransactionExecutor.execute(TransactionExecutor.java:70)
                                                                                                    	at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1826)
                                                                                                    	at android.os.Handler.dispatchMessage(Handler.java:106)
                                                                                                    	at android.os.Looper.loop(Looper.java:193)
                                                                                                    	at android.app.ActivityThread.main(ActivityThread.java:6815)
                                                                                                    	at java.lang.reflect.Method.invoke(Native Method)
                                                                                                    	at com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run(RuntimeInit.java:493)
                                                                                                    	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:916)
2023-04-01 13:24:05.112 10279-10279 ActivityThread          com.qj.car.qjlauncher                E  Activity com.qj.car.qjlauncher.QJLauncher has leaked IntentReceiver com.qj.car.qjlauncher.fragment.AppListFragment$AppInstallUninstallReceiver@9a2bb5b that was originally registered here. Are you missing a call to unregisterReceiver()?
                                                                                                    android.app.IntentReceiverLeaked: Activity com.qj.car.qjlauncher.QJLauncher has leaked IntentReceiver com.qj.car.qjlauncher.fragment.AppListFragment$AppInstallUninstallReceiver@9a2bb5b that was originally registered here. Are you missing a call to unregisterReceiver()?
                                                                                                    	at android.app.LoadedApk$ReceiverDispatcher.<init>(LoadedApk.java:1429)
                                                                                                    	at android.app.LoadedApk.getReceiverDispatcher(LoadedApk.java:1210)
                                                                                                    	at android.app.ContextImpl.registerReceiverInternal(ContextImpl.java:1476)
                                                                                                    	at android.app.ContextImpl.registerReceiver(ContextImpl.java:1449)
                                                                                                    	at android.app.ContextImpl.registerReceiver(ContextImpl.java:1437)
                                                                                                    	at android.content.ContextWrapper.registerReceiver(ContextWrapper.java:623)
                                                                                                    	at com.qj.car.qjlauncher.fragment.AppListFragment.onStart(AppListFragment.java:142)
                                                                                                    	at androidx.fragment.app.Fragment.performStart(Fragment.java:3021)
                                                                                                    	at androidx.fragment.app.FragmentStateManager.start(FragmentStateManager.java:589)
                                                                                                    	at androidx.fragment.app.FragmentStateManager.moveToExpectedState(FragmentStateManager.java:300)
                                                                                                    	at androidx.fragment.app.FragmentStore.moveToExpectedState(FragmentStore.java:112)
                                                                                                    	at androidx.fragment.app.FragmentManager.moveToState(FragmentManager.java:1647)
                                                                                                    	at androidx.fragment.app.FragmentManager.dispatchStateChange(FragmentManager.java:3128)
                                                                                                    	at androidx.fragment.app.FragmentManager.dispatchStart(FragmentManager.java:3079)
                                                                                                    	at androidx.fragment.app.FragmentController.dispatchStart(FragmentController.java:262)
                                                                                                    	at androidx.fragment.app.FragmentActivity.onStart(FragmentActivity.java:510)
                                                                                                    	at com.qj.car.qjlauncher.QJLauncher.onStart(QJLauncher.java:1634)
                                                                                                    	at android.app.Instrumentation.callActivityOnStart(Instrumentation.java:1391)
                                                                                                    	at android.app.Activity.performStart(Activity.java:7165)
                                                                                                    	at android.app.ActivityThread.handleStartActivity(ActivityThread.java:3058)
                                                                                                    	at android.app.servertransaction.TransactionExecutor.performLifecycleSequence(TransactionExecutor.java:180)
                                                                                                    	at android.app.servertransaction.TransactionExecutor.cycleToPath(TransactionExecutor.java:165)
                                                                                                    	at android.app.servertransaction.TransactionExecutor.executeLifecycleState(TransactionExecutor.java:142)
                                                                                                    	at android.app.servertransaction.TransactionExecutor.execute(TransactionExecutor.java:70)
                                                                                                    	at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1826)
                                                                                                    	at android.os.Handler.dispatchMessage(Handler.java:106)
                                                                                                    	at android.os.Looper.loop(Looper.java:193)
                                                                                                    	at android.app.ActivityThread.main(ActivityThread.java:6815)
                                                                                                    	at java.lang.reflect.Method.invoke(Native Method)
                                                                                                    	at com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run(RuntimeInit.java:493)
                                                                                                    	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:916)




链接: https://pan.baidu.com/s/1g8BPyj4GC48qBUdw9bNgAg?pwd=3ejf 提取码: 3ejf

修复语音按高速优先导航，但是界面还是显示高德推荐的问题

默认关闭mtklog

设置应用更新][修复不同语言下一键检测结果不同的BUG

壁纸替换为纯白色

蓝牙连接状态通知优化

用户中心
1.添加可能存在的服务器崩溃容错
2.修改白天黑夜模式切换的主界面退出问题

语音内存占用优化

修复服负一屏切换白天黑夜模式时设置应用自动退出的问题

仪表更新.油耗与导航插件重构,优化内存使用;在休眠唤醒中切换主题,app界面不加载的问题



d945e91c9fc3b8dbf5ba5ad4430a665236fcb12bd48efd15844c45ae95c2eab0  ./20230403_IP917_test1_e02_5mc7ch_qjmt_1280x768_r32_4_p01_sn15_v02_c.zip



- [ ] 修改插件的加载方式，插件的切换动画，插件按钮事件的触发方式。每个插件功能的重构已在前面版本集成，918test1版本主要对插件的加载、切换、点击和按钮功能实现方式进行了重构，重点关注各个场景下插件的加载、切换、点击和按钮功能是否与之前一致。
- [ ] 插件切换动画。修改了之前动画不够平滑；动画时新图标出现位置与旧图标位置不一致；需要额外的控件来辅助动画的问题。
- [ ] 仪表UI显示错位的问题。修复后918test1版本在黑夜白天切换时，对左右状态变化的监听只存在0.001s的真空期。还是存在复现的可能性，想要完全避免该问题，需要修改当前架构。
- [ ] 仪表油量条优化。重构油量条，解决原来状态混乱，动画切换容易误操作的问题。油量显示、短路开路动画、一格油闪烁动画、零格油油量图标闪烁动画。

https://docs.qq.com/sheet/DUm9BVmVVbkZTTlJC?tab=BB08J2

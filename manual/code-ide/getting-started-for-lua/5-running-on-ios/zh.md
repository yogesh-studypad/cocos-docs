在iOS设备上运行游戏
==========

在模拟器上[《调试游戏代码》](../3-debugging/zh.md)很方便，但不能完全替代在设备上调试代码，像支付、来电等情况必须使用真机来调试一下才行。

------------

1. 在调试前，需要手工把"runtime/ios"目录下的IPA安装包安装到手机。  
2. 然后把设备通过WiFi连接到和电脑相通的无线热点上。
3. 有了以上准备就可以开始调试了。首先在设备上打开刚刚安装的程序。程序会显示等待调试连接。  
  ![][lua ios runtime img]
4. 然后点击Code IDE工具栏的调试配置按钮，打开调试设置界面。  
  ![][debug config btn img]
5. 在要调试的项目的设置页面上，选择"Target Platform"为"Remote Debug"，选择平台为iOS，在目标IP的输入框内输入在设备上显示的IP地址，然后就可以点击调试按钮开始调试了。因为在iOS设备上调试是通过远程调试来进行的，所以每次调试前，需要先手工启动手机上的程序，然后再通过Code IDE启动调试。  
  ![][lua remote debug img]

---------------

以这样的方式在设备上运行的程序并不是正式的发布程序，正式打包请看[《如何申请发布版本的证书和使用Code IDE制作可发布的ipa》](../7-packaging-ipa/zh.md)。


[lua ios runtime img]: ./res/lua-ios-runtime.png
[debug config btn img]: ./res/debug-config-btn.png
[lua remote debug config img]: ./res/lua-remote-debug.png

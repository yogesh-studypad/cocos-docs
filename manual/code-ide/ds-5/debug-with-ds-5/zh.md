# 用 DS-5 调试 C++ 代码

在 Cocos Code IDE 中调试安卓的 C++ 代码，需要先安装好 ARM DS-5 插件，如果还未安装，[请点击这里](../zh.md)。

用 DS-5 调试安卓的 C++ 代码，需要做一些准备工作，高兴的告诉大家，Cocos Code IDE 从1.1.0版本开始，内置了 DS-5 调试的配置向导，方便大家准备好 DS-5 调试所需的设置。

## DS-5 调试步骤

-------
1. 首先建立一个包含C++代码的游戏工程，在选择工程之后，点击工具栏。   
![](./res/ds-5-config-button.jpg)
2. 如果还没有配置好安卓的编译环境，则会打开设置对话框。如果之前已经设置好，则会跳过此步骤。 
![](./res/ds-5-config-android.jpg)
3. 进入欢迎界面后，点击下一步进入安卓编译选项，因为 DS-5 调试需要特定的编译器支持，所以就算以前编译过安卓工程也需要重新编译一下。  
![](./res/ds-5-config-compile.jpg)
4. 选择好需要的安卓 SDK 版本后，就可以开始编译了。编译需要一段时间，编译成功后自动进入 DS-5 的配置界面。  
![](./res/ds-5-config-config.jpg)
5. 要开始调试需要至少有一个安卓设备被正确识别，此时可以用 USB 线连接好手机，如果手机的调试模式已打开，且驱动程序安装正常的话会在设备列表中显示出来。
6. 其它配置参数已默认配置好，可以直接点击按钮开始调试了。调试开始后，DS-5 会自动中断下来，此时可以在左上角的工程管理界面选择需要下断点的文件。  
![](./res/ds-5-project-view.jpg)
7. 双击打开后在需要的地方双击代码窗口左边栏就可以下断点了。  
![](./res/ds-5-code-view.jpg)
8. 不过目前 DS-5 安卓调试时还不能中断到程序入口处，所以可能开始部分代码已经运行过去了。断点下好后，点击"继续执行"或按"F8"继续执行，执行到下断点的函数就会自动停下来调试了。  
![](./res/ds-5-run-button.jpg)
9. 停止调试后，可以在 DS-5 的左上角的"Debug"界面重新起动调试。如果修改的C++代码，需求重新编译，此时可以再次点击 DS-5 配置向导按钮重新编译。当然，以其它方式编译代码也是可以的。  
![](./res/ds-5-config-button.jpg)

----------
按上面的步骤就可以在 Cocos Code IDE 中使用 DS-5 在安卓平台调试 C++ 代码啦，那可不可以同时调试游戏的 C++ 代码和脚本代码呢？答案是可以！
很简单，只要在 DS-5 调试启动后，让游戏停留在等待连接界面，然后切换到 Lua 或 JS 的开发界面，通过 "Remote Debug"的方式启动脚本调试就好了。详细步骤请参考[《如何同时调试脚本代码和C++代码》](../../function-guides/debugging/how-to-debug-cpp/zh.md)。

## 小提示

- DS-5 识别通过"USB"连接的设备，需要调用安卓 SDK 中的"adb"命令。在Windows系统上Cocos Code IDE已自动把"adb"的路径设置给 DS-5，但在 Mac 系统上无法设置。如果在终端中无法访问"adb"命令，可以在终端执行如下命令解决问题：  

        $>sudo ln <android sdk>/platform-tools/adb /usr/bin/adb
        
- Cocos2d-x 引擎3.3正式版以前版本在 DS-5 调试时会出现点击"Play"按钮无法执行游戏的问题，需要修改"<PROJECT>/frameworks/runtime-src/Classes/runtime/Runtime.cpp"中的"lua_cocos2dx_runtime_addSearchPath"为：

        int lua_cocos2dx_runtime_addSearchPath(lua_State* tolua_S)
        {
            ......
        // Modify the 'if' condition, at line: 1090
        #if(CC_TARGET_PLATFORM == CC_PLATFORM_IOS || CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID)
            cobj->addSearchPath(originPath);
        #endif
            ......
        }
        
- 想了解更多 DS-5 相关信息，请参考 ARM 官方文档：[《DS-5 社区版 Android 调试》](http://ds.arm.com/zh-cn/developer-resources/tutorials/android-native-app-debug-tutorial/)。


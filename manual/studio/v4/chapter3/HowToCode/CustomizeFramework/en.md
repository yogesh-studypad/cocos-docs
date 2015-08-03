# Customize Cocos Framework & Simulator

### Overview

The following section provides guidance on how to create and include custom Cocos Framework & Simulator for your games. 

### Version Requirement

Customizing Cocos Framework requires Cocos Framework v3.7 or higher. 

The directories below are based on v3.7 and the installation of Cocos Framework. 

### How to customize Cocos Framework

Customizing Cocos Framework is actually modifying its source codes. After the installation of Cocos Framework, you can customize the framework with IDE or code editors. 

* On Mac, you can open projects `/Applications/Cocos/frameworks/cocos2d-x-v3.7/build/CocosFramework.xcodeproj` with XCode. Then you need to modify and debug codes. 
* On Windows, you can open projects ` [installation directory]/frameworks/cocos2d-x-v3.7/build/CocosFramework.sln` with Visual Studio. Then you need to modify and debug codes.

### How to release the custom Cocos Framework

#### Build a new precompiled library

There is a scripting tool in Cocos Framework to compile source codes to precompiled library: `frameworks/cocos2d-x-v3.7/tools/framework-compile/gen_cocos_libs.py`. 

The following is a detailed description of how to use this scripting tool: 

    ```
    usage: gen_cocos_libs.py [-h] [-c] [-all] [--win] [--mac] [--ios] [--android]
     [--dis-strip] [--vs VS_VERSION] [--app-abi APP_ABI]
    
    生成新的 Cocos Framework 预编译库。
    
    可用参数:
    
     -h, --help显示帮助信息
    
     -c编译之前先删除之前的 prebuilt 文件夹
    
     -all  编译所有平台（Mac 系统编译 Mac，iOS 和 Android；Windows 系统编译 Win32 和 Android）
    
     --win 编译 Win32 平台
    
     --mac 编译 Mac 平台
    
     --ios 编译 iOS 平台
    
     --android 编译 Android 平台
    
     --dis-strip, --disable-strip  关闭 strip 功能，编译生成的 .a 文件不再 strip。（影响 Mac，iOS 和 Android 平台的预编译库）
    
     --vs VS_VERSION   指定使用的 Visual Studio 版本。不指定的话，自动查找可用版本。
    
     --app-abi APP_ABI 指定 ndk-build 所使用的 APP_ABI 参数值。可以使用 ":" 来分隔多个值。例如：--app-abi armeabi:x86。 默认值为 armeabi。
     ```
For example: 

1. `python gen_cocos_libs.py -c -all` : Clear previous precompiled library and compile all platforms.
2. `python gen_cocos_libs.py --win --vs 2015` : Compile Win32 platform with Visual Studio 2015.

Precompiled library will be created in the following directory `frameworks/cocos2d-x-v3.7/prebuilt`. Include the new precompiled library to game projects.  

***Note** To customize Cocos Framework, you need to modify source codes and maintain project files. Any problem in the custom codes or projects will lead to a failure in implementing compiling tools.* 

#### Create a new simulator

There is a scripting tool in Cocos Framework to compile source codes to precompiled library: `frameworks/cocos2d-x-v3.7/tools/framework-compile/gen_cocos_simulator.py`。

The following is a detailed description of how to use this scripting tool: 

    ```
    usage: gen_cocos_simulator.py [-h] [-c] [-m {debug,release}] [-o OUT_DIR] -p
      {ios,mac,android,win32,all} [--vs VS_VERSION]
    
    重新生成模拟器。
    
    可用参数:
    
    -h, --help显示帮助信息
    
    -c, --clean   重新生成之前，先删除指定的输出目录。
    
    -m {debug,release}, --mode {debug,release}  生成模拟器的模式，可选值：debug，release
    
    -o OUT_DIR, --output OUT_DIR 生成的模拟器存放路径。不指定的话，默认放在 "frameworks/cocos2d-x-v3.7/simulator" 文件夹。
    
    -p {ios,mac,android,win32,all}, --platform {ios,mac,android,win32,all} 需要编译的平台。如果为 all，则 Mac 系统编译 Mac，iOS 和 Android；Windows 系统编译 Win32 和 Android
    
    --vs VS_VERSION   指定使用的 Visual Studio 版本。不指定的话，自动查找可用版本。
    ```
For example: 

1. `python gen_cocos_simulator.py -c -p all` : Clear previous simulators and compile all platforms. 
2. `python gen_cocos_libs.py -p win32 --vs 2015` : Compile Win32 simulator with Visual Studio 2015. 

### Integrate custom simulator

Copy and replace the files under " **installation directory/Cocos/cocos-simulator-bin** ". Once you have done it, you can use the custom simulator. 

***Note** Simulator is mainly used to preview projects. If you want to use a new simulator, you need to replace the current used simulator with the new one.* 

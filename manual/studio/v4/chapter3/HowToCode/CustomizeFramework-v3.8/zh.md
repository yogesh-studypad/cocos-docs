#自编译Cocos Framework&Simulator使用说明


##简介

本文档介绍如何定制Cocos Framework&Simulator，并在游戏工程中使用定制后的Cocos Framework&Simulator。

定制Cocos Framework是指安装Cocos Framework之后，对其中的引擎源码进行修改与定制，然后使用的过程。

##版本要求

定制Cocos Framework为v3.7版本新增的功能，3.7以下的版本并不支持。此文档适用于 v3.8 以及以后版本。

以下的内容中提到的路径以v3.8版本为例，具体路径以实际安装的Cocos Framework版本为准。

##如何定制Cocos Framework

定制Cocos Framework实际上就是修改安装的源码。在Cocos Framework安装完成后，可以使用XCode 6.0机器以上的版本 和 Visual Studio 2013版本进行修改和调试：

* Mac系统可以使用XCode打开工程文件`/Applications/Cocos/frameworks/cocos2d-x-v3.8/build/CocosFramework.xcodeproj`，然后修改与调试代码即可定制引擎。
* Windows系统可以使用Visual Studio打开工程文件`[安装目录]/frameworks/Cocos2d-x-v3.8/build/CocosFramework.sln`，然后修改与调试代码即可定制引擎。

##如何生成定制后的Cocos Framework

###重新生成预编译库

Cocos Framework中附带了将源码编译生成预编译库的脚本工具：`cocos gen-libs`。

此脚本工具的使用说明如下：

```
usage: cocos gen-libs [-h] [-c] [-e ENGINE_PATH] [-p {ios,mac,android,win32}]
                      [-m {debug,release}] [--dis-strip] [--vs VS_VERSION]
                      [--app-abi APP_ABI]

生成新的 Cocos Framework 预编译库。

生成引擎的预编译库。生成的库文件会保存在引擎根目录的
'prebuilt' 文件夹。

通用参数:
  -h, --help            显示帮助信息
  -c                    生成预编译库之前先删除 'prebuilt' 文件夹。
  -p {ios,mac,android,win32}
                        指定需要编译的目标平台。可以通过多个 '-p' 参数指定编译多个目标平台。
                        默认编译所有可用的目标平台。
  -m {debug,release}, --mode {debug,release}
                        指定使用 debug 或者 release 模式来生成预编译库。默认值为 release。
  --dis-strip           关闭生成预编译库的 strip 功能。

Windows 相关参数:
  --vs VS_VERSION       指定使用的 Visual Studio 版本，例如 2013。
                        默认自动查找可用的版本。

Android 相关参数:
  --app-abi APP_ABI     设置 ndk-build 的 APP_ABI 属性。可以使用 ':' 分隔多个值。
                        示例：--app-aib armeabi:x86:mips。默认值为 'armeabi'。
```

使用示例：

1. `cocos gen-libs -c` 清除之前的预编译库并编译所有可用的目标平台。
2. `cocos gen-libs -p win32 --vs 2015` 使用 VS2015 编译 Win32 平台。

编译完成后，预编译库生成在 `frameworks/cocos2d-x-v3.8/prebuilt` 文件夹下。游戏工程可以直接链接到新生成的预编译库。

备注：

* 对 Cocos Framework 源码的定制包括源码修改以及相应的工程文件维护。如果定制后的代码或者工程配置有问题可能导致编译工具执行失败。
* 当使用 `-m debug` 参数生成 debug 版本预编译库时，游戏项目中的 Visual Studio 工程需要进行相应的修改才能正常编译运行。修改内容如下：  
将 C/C++ -> Code Generation -> Runtime Library 由 /MD 修改为 /MDd。如图：
![VS config](res/vs_config.jpg)

##重新生成模拟器


Cocos Framework 中附带了将源码编译生成预编译库的脚本工具：`cocos gen-simulator`。

此脚本工具的使用说明如下：

```
usage: cocos gen-simulator [-h] [-c] [-e ENGINE_PATH] [-m {debug,release}]
                           [-o OUT_DIR] [-p {ios,mac,android,win32}]
                           [--vs VS_VERSION]

生成 Cocos 模拟器。

可用参数:
  -h, --help            显示帮助信息。
  -c, --clean           生成之前清除输出目录。会完全删除输出目录。
  -e ENGINE_PATH        指定引擎文件夹。默认值为当前工具所在的引擎根目录。
  -m {debug,release}, --mode {debug,release}
                        指定使用 debug 或者 release 模式来生成模拟器。默认值为 debug。
  -o OUT_DIR, --output OUT_DIR
                        指定模拟器的输出目录。默认值为引擎根目录下的 'simulator' 文件夹。
  -p {ios,mac,android,win32}
                        指定需要编译的目标平台。可以通过多个 '-p' 参数指定编译多个目标平台。
                        默认编译所有可用的目标平台。
  --vs VS_VERSION       指定使用的 Visual Studio 版本，例如 2013。
                        默认自动查找可用的版本。
```

使用示例：

1. `cocos gen-simulator -c` 清除之前的模拟器并生成所有可用目标平台的模拟器。
2. `cocos gen-simulator -p win32 --vs 2015` 使用 VS2015 编译 Win32 平台模拟器。

##集成自定义模拟器：


把编译出来的模拟器程序文件拷贝覆盖掉"**安装目录/Cocos/cocos-simulator-bin**"下面的文件，这样就可以替换掉Cocos内置的模拟器，使用自定义的模拟器了。

备注：

* 模拟器主要用于Cocos资源编辑器中的预览功能。如果要在资源编辑器中使用新生成的模拟器，需要使用新生成的模拟器替换掉资源编辑器中的模拟器。

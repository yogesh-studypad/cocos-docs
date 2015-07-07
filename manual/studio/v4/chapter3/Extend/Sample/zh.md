
#示例工程说明

###1.	示例工程位置

&emsp;&emsp;Windows上文档位置默认安装时，这个目录是 %userprofile%\Documents\Cocos\CocosStudio2\Samples\Addins。文档位置自定义安装时，则在Cocos Studio的文档安装目录中的相应位置。例如，文档的安装目录为D:\CocosDocuments，则该路径为 D:\CocosDocuments\Cocos\CocosStudio2\Samples\Addins。在Mac上，这个目录为系统目录/Library/Application Support/Cocos/CocosStudio2/Samples/Addins。

&emsp;&emsp;注：%userprofile% 是Windows一个环境变量，其值一般为C:\users\ABC（ABC 用户名），可将该路径粘贴到 Windows资源管理器地址栏以打开相应的目录。例如，在Windows的cmd命令行工具中输入set userprofile将得到以下输出：

![image](res/image001.png) 
 
(遮蔽部分为用户名)

###2.	示例工程其它细节

&emsp;&emsp;本节将介绍一些示例工程Addins.Sample的其它细节。

&emsp;&emsp;**示例工程的位置：**Windows上文档位置默认安装时，这个目录会是%userprofile%\Documents\Cocos\CocosStudio2\Samples\Addins。文档位置非默认安装时，则在Cocos Studio的文档安装目录中的相应位置。例如，如果文档的安装目录为D:\CocosDocuments，则该路径为D:\CocosDocuments\Cocos\CocosStudio2\Samples\Addins。在Mac上，这个目录为系统目录/Library/Application Support/Cocos/CocosStudio2/Samples/Addins。

&emsp;&emsp;**示例工程的编译：**示例工程是一个Visual Studio 2013的解决方案。在Windows上直接打开Addins.sln即可编译。如果没有安装Mono库及GTK#，请自行安装。在Mac上由于权限的关系，请把示例工程拷贝到一个用户有权限读写的目录时行编译。在Mac上可以使用Xamarin Studio进行编译。请自行安装MonoFramework。

&emsp;&emsp;**编译后 DLL 的拷贝。**编译成功后，会得到一个Addins.Sample.dll，请将其拷贝到Addins目录里。（Windows上文档位置默认安装时，这个目录会是%userprofile%\Documents\Cocos\CocosStudio2\Addins。文档位置非默认安装时，则在Cocos Studio的文档安装目录中的相应位置。以在Windows上为例，如果文档的安装目录为 D:\CocosDocuments，则该路径为D:\CocosDocuments\Cocos\CocosStudio2\Addins。在Mac上，这个目录为用户目录~/Library/Application Support/Cocos/CocosStudio2/Addins）。

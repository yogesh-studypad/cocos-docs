#如何修复打包以及运行失败？#

&emsp;&emsp;1，JDK，SDK，NDK，Framework，Cocos项目都必须放到英文目录，非英文目录可能会导致打包出现异常问题。

&emsp;&emsp;2，JDK安装成功后，Java目录下会生成2个文件夹，分别以jdk和jre开头。需要将这2个文件夹下的bin路径配置到系统变量里面。添加系统变量JAVA_HOME，变量值是jdk文件夹路径。如下截图：

&emsp;&emsp;![image](res/image0001.png)
 
&emsp;&emsp;编辑系统变量Path，在后面追加jre文件夹下的bin路径，注意，需要先输入一个半角分号，再输入bin路径，例如： C:\Program Files\Java\jre1.8.0_45\bin，如下截图：

&emsp;&emsp;![image](res/image0002.png)

&emsp;&emsp;3，增加cpp文件，需要添加到VS工程、XCode工程，同时必须需要修改android.mk文件，位置在proj.android/jni/Android.mk。

&emsp;&emsp;4，Cpp代码编码格式一定要是UTF-8，使用Visual Studio可以方便的查看文件编码格式，如下图：

&emsp;&emsp;![image](res/image0004.png)

&emsp;&emsp;![image](res/image0003.png)

&emsp;&emsp;5，由于 python 对 windows 系统中路径的支持存在缺陷，目前暂不支持直接运行 U 盘中的项目。请将项目拷贝到硬盘中然后运行。








新建一个cocos2d-x Lua游戏
============

在此之前，Code IDE和引擎应该已经安装好了。接下来，我们开始建立一个游戏工程。

------------

1. 第一次打开Code IDE，需要选择一个workspace的目录；workspace是一个工作空间，里面保存了开发环境的配置，可以在这里添加一个或多个工程。可以创建多个workspace管理不同的工程，也可以用一个workspace管理所有工程。  
  ![][select workspace img]
2. 进入Code IDE主界面，可以看到欢迎界面，在这里，可以选择开发Lua游戏或选择开发JavaScript游戏。点击Lua按钮进入Lua开发环境。  
  ![][select welcome lua img]
3. 如果没有设置好引擎路径，会弹出引擎设置框，点击下拉列表中的custom然后把引擎的根目录设置好就可以了。  
  ![][set lua engine img]
4. 在界面左边的窗口是项目管理器，在空白区域右键单击选择新建Cocos Lua项目开始新建项目。  
  ![][select new lua proj img]
5. 在第一个页面，需要设置项目的名字和保存的路径，默认保存在workspace文件夹下，也可以手动设置保存到另外的目录下。需要注意的是，在一个workspace中，项目的名字是不能重复的。  
  ![][create lua page1 img]
6. 在第二个页面，首先需要设置游戏是横屏的还是竖屏的。然后在桌面平台模拟器的设置项中，可以设置模拟器上显示的标题和模拟器的初始窗口大小，如果电脑屏幕分辨率不是很高，可以把窗口大小设置小一点，以使模拟器启动时整个窗口能完整的显示在屏幕内。最后的添加C++代码选项决定新工程要不要生成对应的C++源码，源码也可以在以后需要的时候添加，现在就不选择了，点击确定开始新建工程。  
  ![][create lua page2 img]
7. 新建项目完成后，就可以在工程管理界面看到新建的工程了。  
  ![][create lua finish img]
8. 新建的工程里面有一段示例代码，是可以直接运行的。选中工程，然后点击工具栏上的调试按钮，新建的游戏就运行起来了。  
  ![][run new game img]

-------------

接下来，就可以[《编写游戏逻辑》](../2-typing-game-logic/zh.md)了。

---------------

小提示
--------

- 新建项目需要在Code IDE中配置好python环境，如果已正确安装python，会自动配置好路径，否则如果出现找不到python的错误，需要手动配置好。
- Working set有什么用？Working set是一种项目分组机制，可以把项目中的项目按需要放入不同的Working set中，以方便管理。  
  ![][lua working set img]
- 如果已有一个Lua工程，但不是Code IDE建立的，可以参考[《如何打开已有的Lua游戏工程？》]()这个文档。
  
[select workspace img]: ./res/select_workspace.png
[select welcome lua img]: ./res/select_welcome_lua.jpg
[set lua engine img]: ./res/set_lua_engine.jpg
[select new lua proj img]: ./res/select_new_lua_proj.jpg
[create lua page1 img]: ./res/create_lua_page1.jpg
[create lua page2 img]: ./res/create_lua_page2.jpg
[create lua finish img]: ./res/create_lua_finish.jpg
[run new game img]: ./res/run_new_game.jpg
[lua working set img]: ./res/lua_working_set.png

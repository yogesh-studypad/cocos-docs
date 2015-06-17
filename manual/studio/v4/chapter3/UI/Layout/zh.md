#UI布局与多分辨率适配

&emsp;&emsp;Cocosv2.1开始新增了一种新的多分辨率适配方案：流式布局。 

&emsp;&emsp;这种布局相比cocos studio v1.x时代简单纯粹得多，没那么多复杂的概念也没那么难理解，上手更简单，这篇教程就是来教大家怎么使用这个功能的。 

&emsp;&emsp;实际上之前也写过一篇布局教程，不过反响感觉不太好，不少人看完之后还有不少疑问，尤其是跟2d-x协作相关的疑问。因此，这次提供一个更给力的版本，从cocos编辑配置到与cocos2d-x协作的一个完整教程。 

###目录:

1. Cocos编辑器配置部分。

2. Cocos2d-x(CocosFramework)中的相关概念及代码设置。

#####一、Cocos编辑器配置部分

自动布局系统主要涉及固定与拉伸属性：
 
![gif](res/gif001.gif) 

&emsp;&emsp;如图，总共可以修改控件的上下左右四个图钉和中间的两个拉伸条六个属性。

#####效果

&emsp;&emsp;1.当打开其中的任意一个图钉时，当前节点与父节点的对应边的距离即被固定。当父节点的大小修改时，当前节点与父节点对应边的距离总是不变。

![gif](res/gif002.gif) 
 
&emsp;&emsp;2.当打开其中的任意两个相对的图钉时，当前节点与父节点对应的两边的距离成固定比例。即当修改父节点的大小时，当前节点到父节点对应两条边的距离之比总是不变的。

![gif](res/gif003.gif) 
 
&emsp;&emsp;3.当开启中间任意一条拉伸条，如横向拉伸条，节点的宽度与父节点的宽度之比固定不变。

![gif](res/gif004.gif) 
 
#####其他
&emsp;&emsp;1. 不开启上述任意属性时，对象默认相对左下角位置不变。

&emsp;&emsp;2. 当前仅控件对象（文本、FNT字体也没有）和容器两种类型有拉伸条属性。

&emsp;&emsp;其实据我观察根据上述描述大部分人已经能够完全了解这个东西的配置方法了。所以这里我不再赘述。

&emsp;&emsp;接下来我们拉一个这样的界面出来，并用固定图钉、拉伸条将其中的控件固定在相应的位置上：
 
![image](res/image005.png) 

&emsp;&emsp;其中除了no set那个按钮其他所有控件都有布局相关的设置。附件中有这个界面的工程和第二部分的代码（以下简称demo）。具体可以自己打开去看。看的话最好调整调整左上角的场景大小，看看效果。 

#####二、Cocos2d-x(Cocos Framework)中的相关概念及代码设置

设计分辨率和屏幕分辨率： 

&emsp;&emsp;首先我们需要了解两个概念：在cocos2d-x中有两种分辨率：设备分辨率、屏幕分辨率。设备分辨率即当前游戏所运行平台的实际分辨率；设计分辨率就是我们设计的游戏的分辨率。 

&emsp;&emsp;设计分辨率是可设置的，是我们的游戏程序能够“感知到”的分辨率大小，我们的界面超过这个区域的部分都不会显示。

&emsp;&emsp;设计分辨率一般在启动时进行设置，demo里边的相关设置在AppDelegate::      &emsp;&emsp;applicationDidFinishLaunching中进行，代码如下：

    director->getOpenGLView()->setDesignResolutionSize(960,640,ResolutionPolicy::FIXED_HEIGHT);
(这句代码上边还有一句createWithRect这个是在桌面系统上，创建游戏模拟器用的。可以修改里边的Rect的后边两个值来修改设备分辨率，但这个值在移动设备上是无效的。)

&emsp;&emsp;这句代码什么意思呢？

&emsp;&emsp;这里把设计分辨率设置为960,640，并把游戏界面调整方案设置为固定宽度。但这么设置之后，我们后边再获取设计分辨率时得到的大小却不一定是960,640。这又是为什么呢？

&emsp;&emsp;看看源码：

&emsp;&emsp;转到setDesignResolutionSize的定义看看。里边做了一些判断和赋值，最终调用了updateDesignResolutionSize，继续转到updateDesignResolutionSize里边，这个函数的部分代码如下：

	//1.计算游戏界面在缩放至充满屏幕的情况下X、Y轴的缩放率:
    _scaleX= (float)_screenSize.width/ _designResolutionSize.width;
    _scaleY= (float)_screenSize.height/ _designResolutionSize.height;
  
    //2.根据设配策略，调整缩放率和设计分辨率:
    if(_resolutionPolicy== ResolutionPolicy::NO_BORDER)
    {//将X、Y轴缩放值设置为其中的最大者
        _scaleX = _scaleY = MAX(_scaleX,_scaleY);
    }
    else if(_resolutionPolicy== ResolutionPolicy::SHOW_ALL)
    {//将X、Y轴缩放值设置为其中的最小者
        _scaleX = _scaleY = MIN(_scaleX,_scaleY);
    }
    else if( _resolutionPolicy == ResolutionPolicy::FIXED_HEIGHT) {
        _scaleX = _scaleY;//将X、Y轴缩放值固定为Y轴缩放值，调整设计分辨率的宽度，使设计分辨率的宽度在缩放后依然能够充满屏幕。
        _designResolutionSize.width= ceilf(_screenSize.width/_scaleX);
    }
    else if( _resolutionPolicy == ResolutionPolicy::FIXED_WIDTH) {
        _scaleY= _scaleX;//将X、Y轴缩放值固定为X轴缩放值，调整设计分辨率的高度，使设计分辨率的高度在缩放后依然能够充满屏幕。
        _designResolutionSize.height= ceilf(_screenSize.height/_scaleY);
    }
    //其他缩放策略:EXACT_FIT不作调整
&emsp;&emsp;这段代码主要做了两件事：

&emsp;&emsp;1.根据设备分辨率和设计分辨率计算游戏界面的缩放率；

&emsp;&emsp;2.调整设计分辨率。

&emsp;&emsp;根据以上源码我们应该很容易就能够理解几种缩放策略的意义：

&emsp;&emsp;·NO_BORDER就是在保持设计分辨率大小不变的情况下，将游戏界面按比例缩放至充满屏幕。游戏的上下或者左右两边可能会被裁剪。

&emsp;&emsp;·SHOW_ALL(cocos2d-x默认方案)就是在保持设计分辨率大小不变的情况下，将游戏界面按比例缩放至设计分辨率的其中一边顶住屏幕。游戏上下或者左右两边可能会有黑边。

&emsp;&emsp;·FIXED_HEIGHT就是固定设计分辨率的高度，调整设计分辨率的宽度，使设计分辨率的长宽比与设备分辨率的长宽比相同，然后缩放游戏界面至充满屏幕。

&emsp;&emsp;·FIXED_WIDTH同上，不同的是保持宽度不变。

&emsp;&emsp;·EXACT_FIT是最粗暴的方式，直接将游戏界面缩放到充满整个屏幕，X轴Y轴缩放比率不一定一致。

&emsp;&emsp;那么，我们应该选择哪个方案呢？必然的我们应该选择FIXED_HEIGHT或者FIXED_WIDTH。因为只有这两个方案下，界面是会自动根据设备分辨率调整设计分辨率的大小并且充满屏幕。

Demo怎么做的：

&emsp;&emsp;Demo里我设置的是FIXED_HEIGHT。大家也可以去下载这个Demo调整这个值，还有设计分辨率的大小，看看现象。

&emsp;&emsp;OK，设置完之后Demo的游戏界面的分辨率就可以自动根据手机的分辨率调整啦。

接下来加载界面。

&emsp;&emsp;Demo中加载界面在HelloWorld::init中进行：

	auto rootNode= CSLoader::createNode("MainScene.csb");
    auto size= Director::getInstance()->getVisibleSize();
    rootNode->setContentSize(size);
    ui::Helper::doLayout(rootNode);
    addChild(rootNode);
&emsp;&emsp;这里除了用createNode把界面加载出来，并添加到HelloWorld之外，还做了两件事情：

&emsp;&emsp;•	设置加载出来的界面的ContentSize，调用对rootNode调用了ui::Helper::doLayout对加载出来的界面进行处理。

&emsp;&emsp;•	为什么要这么设计呢，做成自动的多好啊？

来个段子：

&emsp;&emsp;我们的研发同学也考虑了下在createNode里边帮大家设置大小，但他犹豫了下：这样加载出来的界面跟开发者在编辑器里边设置的会不一样啊，这么一个不一致的东西放出去等下是不是又会被骂呢，然后他就吓的出去抽了根烟回来继续加班了。

&emsp;&emsp;OK，段子讲完了。虽然是段子但是还是说了其中一个理由：跟编辑器不一致；另外一个理由是：自动调整界面被设计为是被动的，如果是主动进行的话，可能会造成大量的性能损失——如果每次设置大小都要重新遍历计算所有的子节点的位置，那得浪费多少CPU时间啊。

#####效果：

&emsp;&emsp;我一直觉得有部分开发者懒癌很严重，不打算下载Demo去看效果。那么我抽几个例子给这部分晚期患者看看效果吧。我懒癌也不轻，所以以下为偷懒式描述，不理解自己看代码。

1. 设备分辨率X/Y相对设计分辨率X/Y较大，设配策略为固定高度

![image](res/image006.png) 
 
2. 设备分辨率X/Y相对设计分辨率X/Y较大，设配策略为固定宽度

![image](res/image007.png) 
 
3. 设备分辨率X/Y相对设计分辨率X/Y较小，设配策略为固定高度

![image](res/image008.png) 
 
4. 设备分辨率X/Y相对设计分辨率X/Y较小，设配策略为固定高度

![image](res/image009.png) 
 
DEMO下载：CocosProjects

&emsp;&emsp;PS：枚举类型 ResolutionPolicy 是框架提供给我们的方便的默认方案。其实我们在设置设计分辨率之前可以获取设备分辨率，然后自己根据设备分辨率调整设计分辨率。 



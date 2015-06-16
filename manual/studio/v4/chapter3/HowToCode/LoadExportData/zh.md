**如何加载cocos 2.0版本发布的数据**

 使用Cocos 2.x发布的CSB资源更换了加载方式，需要用CSLoader来加载。目前的cocos支持的语言有C++、js、lua, 编辑器默认导出的格式为csb、json，下面来分语言介绍如何在引擎加载编辑器导出的数据：
 
 C++（仅能加载csb数据）：

	#include "ui/CocosGUI.h"
	#include "Cocos Studio/Cocos Studio.h"

	using namespace cocos2d;
	using namespace Cocos Studio::timeline;
	
	void myScene::initFunc() 
	{ 
		 //通过csb创建场景
		 Node *rootNode = CSLoader::createNode("MainScene.csb");
		 this->addChild(rootNode);
		 
		 //通过csb创建动画 
		 ActionTimeline *action = CSLoader::createTimeline("MainScene.csb"); 
		 rootNode->runAction(action); 
		 
		 //同一个文件创建的节点只能使用同一个文件创建的动画。 
		 //从第0帧循环播放动画
		 action->gotoFrameAndPlay(0,true);
	} 


Lua（仅能加载csb数据）：
     
	--相关代码在src\packages\mvc\ViewBase.lua文件
	function ViewBase:createResoueceNode(resourceFilename)
		if self.resourceNode_ then
			self.resourceNode_:removeSelf()
				self.resourceNode_ = nil
		end
		-- 通过csb创建场景
		self.resourceNode_ = cc.CSLoader:createNode(resourceFilename)
		self:addChild(self.resourceNode_)
		
		-- 通过csb创建动画
		local action = cc.CSLoader:createTimeline(resourceFilename)
		node:runAction(action)
		
		--同一个文件创建的节点只能使用同一个文件创建的动画。 
        --从第0帧循环播放动画
		action:gotoFrameAndPlay(0, true)
	end

JS（仅能加载Json数据）：
   
	//相关代码在src\app.js文件
	var HelloWorldLayer = cc.Layer.extend({
		sprite:null,
		ctor:function () {
		    //////////////////////////////
		    // 1. super init first
		    this._super();
		
		    /////////////////////////////
		    // 2. add a menu item with "X" image, which is clicked to quit the program
		    //    you may modify it.
		    // ask the window size
		    var size = cc.winSize;
		    //通过json创建场景
		    var mainscene = ccs.load(res.MainScene_json);
			//获取动画
		    var action = mainscene.action;
			if(action){
                //绑定动画
			    mainscene.node.runAction(action);
                //同一个文件创建的节点只能使用同一个文件创建的动画。 
                //从第0帧循环播放动画
			    action.gotoFrameAndPlay(0, true);
			}
            this.addChild(mainscene.node);
		    return true;
		}
	});

**注意:**

1. 您可以在发布工程目录的 res 子目录中找到发布出来的csb/json文件。

2. 2.1及其以上版本的cocos导出的数据，Cocos2d-x 3.4及其以上版本和cocos2d-js 3.3及其以上的版本均可以加载。 

3. Cocos v2.x 假定在编辑器里边的资源目录即游戏的最终的目录结构，因而如果你修改了导出资源的目录则需要编辑器目录也需要跟着修改。也可以用addSearchPath来把你的路径添加到FileUtils中，但要注意文件名冲突。 
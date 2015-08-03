#Load Exported Data#

 CSB files, published by Cocos Studio v2.0, need to be loaded with CSLoader. CSLoader has been available from Cocos2d-x 3.3 RC0. Currently Cocos Studio supports C++ and JS. The following are C ++, JS code.
 
### C++ (only support CSB data)

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


### Lua (support CSB and Lua data)

**To load CSB** 
     
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
			self.resourceNode_:runAction(action)
			
			--同一个文件创建的节点只能使用同一个文件创建的动画。 
	        --从第0帧循环播放动画
			action:gotoFrameAndPlay(0, true)
		end

**To load Lua** (download Lua export plugin at Cocos Store)

       	   --相关代码在src\app\views\MainScene.lua文件
	   -- 注：这里 MainScene.lua 为发布出来的 Lua 代码文件。您可以在发布目录中找到它。
		   MainScene.RESOURCE_FILENAME = "MainScene.csb" 修改为 
	   	   MainScene.RESOURCE_FILENAME = "MainScene.lua"
	
	   --相关代码在src\packages\mvc\ViewBase.lua文件：	
	   function ViewBase:createResoueceNode(resourceFilename)
	       if self.resourceNode_ then
				self.resourceNode_:removeSelf()
					self.resourceNode_ = nil
		   end
		   -- 通过lua创建场景
	       local scene=require(resourceFilename)
		   local gameScene=scene.create(nil)
		   self.resourceNode_=gameScene.root
	
	       -- 通过lua创建动画
	       gameScene.root:runAction(gameScene.animation)
	
	       --同一个文件创建的节点只能使用同一个文件创建的动画。 
	       --从第0帧循环播放动画
	       gameScene.animation:gotoFrameAndPlay(0,true)
	    end    

### JS (only support JSON)
   
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

***Notes*** 

*1 You can find the published csb/ json files in "res" directory under published projects folder.* 

*2 Data exported from Cocos Studio v2.1+, Cocos2d-x v3.4+ and Cocos 2d-js v3.3+ can be loaded.*

*3 Cocos Studio v2.x assumes that the resources’ directory of the editor is same as the directory of the game. If the directory of the exported files has been changed, so has the directory of the editor. You can also add the file path into FileUils with addSearchpath, and it should be noted that file name conflicts are not supported.* 

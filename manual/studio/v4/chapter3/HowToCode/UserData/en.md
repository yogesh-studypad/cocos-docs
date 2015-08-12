# Create Custom Data #

Select Button-> Properties -> Advanced -> User Data. For example, type 123, as the following picture shows. 

![image](res_en/image001.png)
      
### C++ ###
   
        //包含头文件
	    #include "cocostudio/CCObjectExtensionData.h"
        .....
		//根据控件的Tag获取button控件
        auto button = _rootNode->getChildByTag("XXX");
        //在代码里面先获取到button，然后调用getUserObject(),并把获取的对象强转为cocostudio::ObjectExtensionData* 指针,再调用getCustomProperty()
        auto userdata = ((cocostudio::ObjectExtensionData*)(rootNode->getUserObject()))->getCustomProperty();
		CCLOG("%s", userdata.c_str());	

### JS ###
   
		//根据控件的Tag获取button控件
        var button = mainscene.node.getChildByTag(XXXXX);
        //获取userData
        var userdata = button.getUserData();
		cc.log(userdata);	

### Lua ###

Currently not supported. 		



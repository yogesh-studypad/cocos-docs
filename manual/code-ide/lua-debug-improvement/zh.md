Cocos Code IDE调试cocos2d-x 3.2流程改进
=========================

简介
----------
---
感谢大家的支持，Cocos Code IDE 已经发布到了 1.0.0-rc1 版本，支持最新的 cocos2d-x 3.2 引擎，不少用户反应在调试 lua 代码时 Step Over, Step Into 等功能会连续断在同一行代码 N 次，给调试过程带来不便。经过IDE攻城师的努力，这个问题终于得到了解决。解决方案是修改引擎，而由于离下一个 cocos2d-x 版本的发布还需要一段时间，所以这里直接介绍修改方法以便用户自行修改引擎。

修改方法
===
---
1. 下载 [lua_debugger.zip](http://www.cocoachina.com/bbs/job.php?action=download&aid=75962)
2. 解压 lua_debugger.zip，将 lua_debugger.c 替换到 engineRoot/cocos/scripting/lua-bindings/manual
3. 如果之前你已经给自己的项目添加的 CPP 源码，那么还要用解压出来的 lua_debugger.c 替换 projectRoot/frameworks/cocos2d-x/cocos/scripting/lua-bindings/manual/lua_debugger.c
4. 编译 runtime
5. 使用最新编译出来的 runtime 进行调试

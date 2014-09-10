[Fixed] Need press F6 many times to Step Over one line when debug lua
=========================

Hi all!
Some of Cocos Code IDE users report that step over one line need press F6(Step Over accelerometer) many times when debug lua.
This bugfix require to change cocos2d-x engine source code. Before the next cocos2d-x release, you can fix the bug by yourself.

 1. Download [lua_debugger.zip](http://www.cocoachina.com/bbs/job.php?action=download&aid=75962)
 2. Unzip lua_debugger.zip, then copy lua_debugger.c to `engineRoot/cocos/scripting/lua-bindings/manual`
 3. If you have added native source code to your own project, copy lua_debugger.c to projectRoot/frameworks/cocos2d-x/cocos/scripting/lua-bindings/manual/
 4. Build runtime
 5. Debug lua using the new runtime
Cocos2d-JS v3.2 @ Dec.29, 2014

* [JSB]Upgrade Cocos2d-x to v3.3 Final.
* [JSB]Added `getSearchPaths` API to `jsb.Manifest` to support better script hot update.
* [JSB]Polished restart game feature.
* [JSB]Added a sample usage case for `jsb.AssetsManager`'s script hot update ability.
* [JSB]Skipped FlatBuffer related bindings.
* [JSB]Canceled modifications in Spine due to License restriction and removed new constructor for `sp.SkeletonAnimation`.

* Bug fixes:
    Removed all usages of deprecated create functions in the test cases.
	1. [JSB]Fixed an issue of `ccui.ScrollView`'s `innerWidth` and `innerHeight` properties.
    2. [JSB]Fixed an issue that setting `cc.Node`'s userData property will crash.
    3. [JSB]Fixed API inconsistence by renaming `jsb.fileUtils`'s `getByteArrayFromFile` to `getDataFromFile`.
    4. [JSB]Fixed a script file cache check issue in ScriptingCore.cpp.
    5. [JSB]Fixed an issue of `ccs.Armature`'s constructore.
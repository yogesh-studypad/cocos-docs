* Added setRotation method to ccui.ImageView.
* Added a function that Fill sprite with repeating texture in Canvas mode  
* Added setLineHeight method to LabelTTF
* Added dumpAudioInfo to audioEngine for debug on mobile browser.
* Added touch checking to audioEngine for iOS devices.
* Added restart method to cc.game for compatible with JSB
* Added cleanScript to sys for compatible with JSB
* Removed Cocostudio's Protobuffer support from framework.

* Bug fixes:
	1. Fixed an issue of cc.Sprite that its rendering is incorrect without texture.
	2. Fixed an issue of cc.ClippingNode that its stencil drawing is incorrect on Canvas Mode.
	3. Fixed an issue of TextFieldReader that it will throw an error when 'areaWidth' and 'areaHeight' equal zero.
	4. Fixed an issue of ccui.CheckBox that its getSelectedState doesn't return its state.
	5. Fixed an issue of cc.LabelTTF that it doesn't update the string when its string become to empty string.
	6. Fixed an issue of cc.ParticleSystem that it can't change the texture mode and shape type on Canvas mode.
	7. Fixed an issue of cc.Layer's bake function that its position is incorrect when cc.view's scale isn't 1.
	8. Fixed an issue of ccs.ArmatureAnimation's setMovementEventCallFunc and setFrameEventCallFunc.
	9. Fixed an issue of console.log that it isn't a funtion on IE9.
	10. Fixed an issue of CSLoader that it will add duplicate resources to sprite frame cache.
	11. Fixed an issue of cc.ProgressTimer that its colorized is invalid. 
	12. Fixed an issue of cc.loader that it will throw an error when loading a remote texture. 
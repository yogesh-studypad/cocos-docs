# ARM DS-5 Promote Android Development

## 1. What is DS-5？
ARM<sup>®</sup> DS-5 Development Studio is built on the standard Eclipse development environment providing outstanding windows management, project management, and C/C++ source code editing tools. DS-5 brings a huge number of features specific to ARM to the Eclipse platform, making it the most powerful toolchain available for ARM software development.

DS-5 series have Ultimate Edition, Professional and Community Edition。Cocos Code IDEARM Limited authorized Cocos Code IDE to release DS-5 Community Edition for developers using.

[![](./res/arm-logo.png)](http://ds.arm.com/ds-5-community-edition/)

## 2. Downloads
Cocos Code IDE support DS-5 Community Edition since 1.1.0 version. However, due to the installation package size reasons, DS-5 provided by a separate installation package is not integrated into the installation package.After downloading, install it in to Cocos Code IDE with the following steps.

DS-5 Community Edition Install Package:  
-  [Click Here for Download](http://www.cocos2d-x.org/filedown/arm-ds-5-5.20.0.20141022-for-cci.zip)  
- __Size__: 250.7 MB(250,681,142 bytes)  
- __MD5__: 7f2aa372c4ab15b34c2b96f010d4fecb  

## 3. Features
DS-5 Community Edition Although no Professional and Ultimate is powerful, but help give Android developers no small.

### Debug C++ Codes on Android
The devices which debug supported should based on ARM9, ARM11 or Cortex-A (ARMv7-A) architecture，be aware that some products based on version 2.2 (Froyo) haven't got this feature enabled.  
![](./res/ds-5-debug-feature.jpg)

### Android Streamline
Supports simple GPU / CPU functional analysis, note that this feature is only certain devices to support, for more information please refer to[《DS-5 CE Android Streamline》](http://ds.arm.com/developer-resources/tutorials/android-performance-analysis-streamline-tutorial/)。  
![](./res/ds-5-streamline-feature.jpg)

## 4. installation

--------
1. Click the menu item "Install New Software..." in "Help" menu.  
![](./res/install-new-software.jpg)
2. Click the "Add..." button，then click the "Archive..." button, navigate to DS-5 install package.  
![](./res/locate-archive.jpg)
3. Next, next... After a required reboot, the installation was successful.Initial installation requires installation authorization file, select the community version.  
![](./res/ds-5-ask-license.jpg)
4. DS-5 Debug view will be find in the menu: "Windows"->"Open Perspective"->"Other...".  
![](./res/open-ds-5.jpg)

--------
After installation successful, to experience [<Debugging C++ Code In DS-5>](./debug-with-ds-5/en.md).

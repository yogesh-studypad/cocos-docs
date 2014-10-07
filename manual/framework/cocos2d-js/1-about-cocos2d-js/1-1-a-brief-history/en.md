# 1.1 A brief history

<img src="http://www.cocos2d-x.org/attachments/download/1508" height=180> 

[Cocos2d-JS](https://github.com/cocos2d/cocos2d-js) is the one open source game engine for web games and native games, and it is high performance, user-friendly, and provides multi-platform support, includes web, android, iOS, WP8, Mac, Windows, etc. Cocos2d-JS makes 2D game programming easier and faster. It clarifies the key components of 2D game programming with easy-to-learn, easy-to-use API, which makes it an outstanding framework compared to others.

Cocos2d-JS is the HTML5 version of Cocos2d-x, includes [Cocos2d-html5](https://github.com/cocos2d/cocos2d-html5) and Cocos2d-x JavaScript Binding (JSB). On top of the framework provided by Cocos2d-JS, one can write games in JavaScript and have the game run on browsers that supports HTML5 base on Cocos2d-html5. The API is completely compatible between Cocos2d-html5 and Cocos2d-x JSB. Thus Cocos2d-JS games can therefore run using "Cocos2d JavaScript Binding" on Cocos2d-x without or with very little modification.

#### Why choose Cocos2d-JS
Why would you want to choose Cocos2d-JS over other available game engines?

* Modern JS API 
* FULL platform without plugin, code once, run everywhere - web, desktop, mobile and console
* Capability to test and debug your game on the browsers and then push it to web, mobile or console target
* A vast API of functionality including sprites, actions, animations, particles, transitions, timers, events (touch, keyboard, accelerometer, mouse), sound, file IO, persistence, skeletal animations
* High performance, proven and reliable

     
### 1.1.1 History

With the rise of Android in 2010, the Cocos2d-x team branched out Cocos2d-x from Cocos2d-iphone not only to focuses on Android platform, but also to targets cross-platform ability as well. In 2011, Google sponsored the Cocos2d-x team to port Cocos2d-x to Cocos2d-html5, which focuses on HTML5-ready browsers, Web App. 

Cocos2d-html5 project was started from Jan. 29 2012, and released first stable version v2.0 base on Cocos2d-x v2.0 in Aug. 2012. Meanwhile, Zygna was helping Cocos2d-x team to develop the Cocos2d-x JSB solution to extern Cocos2d-html5's native platform abilility. The first coordinated releasing of Cocos2d family was released on Dec. 4 2012, thenceforth games which developed base on Cocos2d-html5 can be run on web and native platforms. 

Cocos2d-html5 and Cocos2d-x JSB were combined and upgraded to Cocos2d-JS in Mar. 2014, and released the first statble version v3.0 on Sep.12 2014. In Cocos2d-JS v3.0, it reinvented workflows for all platforms, provides a consistent development experience for whichever platform you want to distribute to, no matter web and native. Cocos2d-JS v3.0 is super powerful along with all these cool new features: Editors Support, Assets Manager, Object Pool, JS to Objective-C/JAVA reflection, etc.

### 1.1.2 Cocos2d-html5 and Cocos2d-x JSB

From the foregoing introduction, Cocos2d-html5 it is one important module of Cocs2d-JS, and it is a pure HTML5 game engine, which base on Canvas/WebGL and 100% compitable with HTML5. So, Cocos2d-JS project can be easily run on HTML5-ready browsers.

If you are only interested in casual games on the web, you can embed directly in your web page the Cocos2d-JS Lite Version which is extremely easy to use and light as a feather.

Cocos2d-JS supports running game code as native application via Cocos2d-x JSB without or little code modification.

Cocos2d-x JSB for C/C++ is the wrapper code that sits between the native code and JavaScript code. JSB enables the calling of the native code from the JavaScript code and vice-versa.

JavaScript code is interpreted by SpiderMonkey, Mozilla’s JavaScript virtual machine (VM). The JavaScript VM is extended by JSB to support Cocos2d-x types, structures, and objects.
SpiderMonkey is Mozilla's open source JavaScript engine written in C/C++, and it can be linked into any C++ program, not just web browsers.
C++ code accesses SpiderMonkey via the JSAPI. The JSAPI provides functions for setting up the JavaScript runtime, compiling and executing scripts, creating and examining JavaScript data structures, handling errors, enabling security checks, and debugging scripts. This technology is used for rapid game development and game prototyping.


### 1.1.3 Position in Cocos2d family

Compared to other Cocos2d branch, Cocos2d-JS is focusing on Cross FULL platfroms includes web games and native games.

HTML5 games are becoming more and more important in the mobile gaming industry. There are already countless numbers of casual and social games available in HTML5. 

Though Cocos2d-x is a popoluar cross-platform game framework, it is not accessible to browsers. Cocos2d-html5 was created to embrace HTML5 – allowing applications and game created with it to run in browsers natively. 

Cocos2d-html5 brings an easy-to-learn, easy-to-use API style to the HTML5 gaming world, and with full features, high performance, real-time updating, click-to-play without the need for installations, and efficient development cycles.

Thanks to Cocos2d-x JSB, Cocos2d-JS provides a consistent development experience for whichever platform you want to distribute to, both web and native. This will bring your game great opportunities in almost all channels of distribution. 

 						

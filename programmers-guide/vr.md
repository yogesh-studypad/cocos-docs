# Virtual Reality (VR)
You have probably heard the term __Virtual Reality__ or __VR__ used before.
__VR__ isn't new. Its roots can be traced back to earlier than the 1970's. The
origiinal goal of __VR__ was to take an environment or situation, both realistic
and unrealistic and let the user feel what it is like to experience it by simulating
their physical presence in the envoronment. You can think of it as *transporting*
the user to another experience, all the while never leaving their physical surroundings.
You might even associate __VR__ with wearing a *head-mounted display* or special
gloves or even taking place on a special platform.

![](vr-img/image33.png "a scene from the movie Disclosure")

Modern __VR__ is focused around *games* and *immersive video*.

There are several __VR__ implemetations that Cocos2d-x provides *drop-in* support
for:

  * [Google Cardboard](https://vr.google.com/cardboard/index.html)
  * [Oculus Rift](https://www.oculus.com/en-us/rift/)
  * [Deepoon E2](http://en.deepoon.com/)
  * [Samsung Gear VR](https://www.oculus.com/en-us/gear-vr/)

## What does VR require? Can anyone use it?
Make sure to double check that your device can support VR. VR needs two things:

  * Stereo rendering (distortion mesh): available on every platform

    ![](vr-img/distortion_mesh.png "")

  * headset input: available only on iOS and Android

## Installing VR into your game
By default Cocos2d-x doesn't ship with __VR__ by default. It is necessary to use
the __Cocos Package Manager__ to add __VR__ to your game. If you are unfamiliar
with __Cocos Package Manager__, please refer to our chapter on the **[Cocos Command-line tool](../editors_and_tools/cocosCLTool/)**. Add __VR__ in a few easy steps:

  * first, make sure you can use the `cocos` command-line tool by testing it.
```cpp
$ which cocos
/Volumes/GitHub/cocos2d-x/tools/cocos2d-console/bin/cocos
```

  If you get a return value, `cocos` is available.

  * second, install the __VR__ SDK you wish to use:
```cpp
$ cocos package ##__to do here__
```

## Enabling VR in Cocos2d-x
In typical Cocos2d-x fashion, enabling and using __VR__ takes just a few lines
of code. It is important to note that enabling __VR__ is best done in __AppDelegate.cpp__.
```cpp
// implementing the "generic" VR renderer
auto vrImpl = new VRGenericRenderer;
glview->setVR(vrImpl);

// implementing the "Cardboard" VR renderer
auto vrImpl = new VRCardboardRenderer;
glview->setVR(vrImpl);

// implementing the "Gear" VR renderer
auto vrImpl = new VRGearRenderer;
glview->setVR(vrImpl);

// implementing the "Oculus" VR renderer
auto vrImpl = new VROculusRenderer;
glview->setVR(vrImpl);

// implementing the "Deepoon" VR renderer
auto vrImpl = new VRDepoonRenderer;
glview->setVR(vrImpl);
```

## Caveats
When using __VR__ it is important to note the following items:

  * Touch events don't work as expected when developing for __VR__. In fact,
  touch events should be disabled in __VR__ games.
  * __VR__ games should be congifured to use a gamepad and/or another external
  input device, such as a *head-mounted display*.

#Workspace Overview

The workspace of Cocos Studio is composed by Menu, Tools bar, Objects panel, Resources panel, Canvas, Properties panel, Animation panel, Output panel and Status bar.

![image](res/image001.png)
 
###Menu
Cocos menu bar is composed of seven options, which are File, Edit, View, Project, Language and Help. On Mac, the menu options are same with what is on Windows, but are displayed in different order. The following section is designed to give a brief introduction to the items from each drop-down menu. Take Windows version as an example. 

![image](res/image002.png)
 
#### 1 File ####
 
![image](res/image003.png)

**New Project**: to create a cocos project. Keyboard shortcut is Ctrl+Shift+N (Win), Command+Shift+N (Mac). 

**New File**: to create a file. The existing file types include Scene, Layer, Node, SpriteSheet and 3D Scene. Keyboard shortcut is Ctrl+N (Win), Command+N (Mac). 

**Open Project**: to open cocos projects. Keyboard shortcut is Ctrl+O (Win), Command+O (Mac). 

**Recent Projects**: to provide a quick access to recently opened projects. The maximum number of recent projects is ten with the last-opened project at the top. 

**Close XXXX.csd/csi**: to close current project XXXX.csd/csi. 

**Close Project**: to close current cocos project. 

**Save XXXX.csd/csi**: to save current project XXXX.csd/csi. Keyboard shortcut is Ctrl+S (Win), Command+S (Mac).

**Save All**: to save all files in a project. Keyboard shortcut is Ctrl+Shift+S (Win), Command+Shift+S (Mac). 

**Save As**: to save a cocos project to a new location or with a new name. 

**Import -> Import Resources**: to import resources from disk to Resources panel.

**Import -> Import Project from v1.6**: to transfer v1.6 projects to currently supported project files. 

**Quit**: to quit Cocos Studio. Keyboard shortcut is Alt+ F4 (Win), Command+Q (Mac). 

#### 2 Edit ####

![image](res/image004.png)
 
**Undo**: to  undo the last action. Keyboard shortcut is Ctrl+Z (Win), Command+Z (Mac). 

**Redo**: to redo an action that you undid. Keyboard shortcut is Ctrl+Y (Win), Command+Y (Mac). 

**Preferences**: keyboard shortcut is Ctrl+, (Win), Command+, (Mac).

![image](res/image005.png)
 
- **General**:

    1 Widgets：to show/hide deprecated widgets. 

    2 Mouse：to enable/disable mouse wheel zoom. 
 
    3 Code IDE：to set path for Code IDE. 
    
![image](res/image006.png)

- **Simulator**: 

    Start: to show/hide command window, which is hidden by default. 

- **Platform**: 

     Android Path: Set path of SDK, NDK, ANT and JDK. For more information, please see [Package and Runtime Environment Settings](../../../chapter2/PackageAndRun/z****h.md).

![image](res/image007.png)

- **Resolution**: 
 
    Modify resolution drop-down list: Add, Edit, Up, Down, Remove and Reset. Click OK for the changes to take effect. The list will update in "Screen Resolution & Orientation".   

![image](res/image008.png)

#### 3 Project ####

![image](res/image009.png)

**Run Project**

- Windows Version: run on Windows, run on Android device, or run on browsers (JS projects). 

- Mac Version：run on iOS, run on Mac, run on Android, or run on browsers (JS projects). 

For more information, please see [Package and Runtime Environment Settings](../../../chapter2/PackageAndRun/en.md). 

**Publish and Package**: 

- Publish Resource: publish resources, then open project with Cocos 2d-x. The published resources have a small file size and load quickly.  

- Publish to Code IDE: first publish resources, then open project with Code IDE. 

- Publish to Visual Studio: first publish resources, then open project with Visual Studio. 

- Android package (.apk): package current project to .apk file. Support Windows and Mac versions. Support C++, JavaScript, Lua. 

- iOS package (.ipa): package current project to .ipa file. Support Mac version. Support C++, JavaScript, Lua. 

- HTML5: package current project to HTML5. Support Windows and Mac versions. Support JavaScript.     
      
**Publish and Package (using the previous settings)**: use the previous settings to publish or package projects. 

**Project Setting**

![image](res/image010.png)

**Publish**
 
- Resource and Project File: copy resources to publish directory; publish csd and csi for Cocos 2d-x.  

    ***Note** The transfer speed will be lower if you publish a number of resources. It is recommended to select "Project File Only".*

- Project File Only: only publish csd and csi for Cocos 2d-x. 

- Publish Directory: users can customize publish directory. Cocos Studio supports absolute and relative path. 

- csb File: FlatBuffers is employed to read binary files, feature in high efficiency, small size, significant security. Support Cocos2d-x C++ and Lua Binding.

- JSON File: Lightweight data transfer format, good readability, native support for JavaScript. 

- Custom: extended data format. For more information, see [Customizing Exported Data Formats](../../Extend/CustomExport/en.md)

**Package**

For more information about Package, see [Package and Runtime Environment Settings](../../../chapter2/PackageAndRun/en.md).

#### 4 View ####

**Anchor Point**: to show or hide the anchor point in rendering section. Keyboard shortcut is Ctrl+Shift+A (Win), Command+Shift+A (Mac). 

**Ruler**: to show or hide ruler. Keyboard shortcut is Ctrl+Shift+R (Win), Command+Shift+R (Mac).

**Guides**: to show or hide guides. Keyboard shortcut is Ctrl+；(Win), Command+; (Mac).

**Lock Guides**: when checked, guides cannot be selected or moved. Keyboard shortcut is Ctrl+Shift+; (Win), Command+Alt+; (Mac).

**Clear Guides**: to delete all the guides in the rendering section. 

**New Guides**: to add guides to rendering section. 

####5 Window

![image](res/image011.png)
 
**Objects, Resources, Animation, Output, Properties**: check/ uncheck to open/ close these panels. 

**Start Launcher**: to start Launcher in Cocos Studio. 

**Reset Window Layout**: to reset the window layout to default settings. 

####6 Language
 
![image](res/image012.png)

Cocos Studio support Chinese and English interface. You need to restart Cocos Studio for your new language setting to take effect.

####7 Help 

![image](res/image013.png)
 
**View Help**: official tutorials.

**Check for Updates**: to check if the latest version is installed on your computer. 

**About Cocos Studio**: version and copyright information; links to official website, Weibo and forum. 

###Tools Bar
 
![image](res/image014.png)

The toolbar contains eight basic components: New File, Resolution, Preview, Publish and Package, Platform Switch, Alignment, Move Canvas and Enable left-click. 

![image](res/image015.png)

![image](res/image016.png)

**New File** - to create a Scene, Layer, Node, SpriteSheet or 3D Scene. 

![image](res/image017.png)

**Screen Resolution & Orientation** - to set the screen resolution and to switch the display between landscape and portrait.

![image](res/image018.png)

**Preview** - to preview a project in simulator. Currently you can preview 2D/ 3D Scene and Animation projects.

![image](res/image019.png)

**Publish and Package**: to publish resources or projects for iOS (.ipa), Android (.apk) and HTML games. 

**Platform Switch** - to run projects on Windows or Android. 

![image](res/image020.png)

![image](res/image021.png)
 
**Alignment**— to align selected widgets on canvas with popular alignment formatting. They are Center, Left-align, Vertical center, Right-align, Vertical Justify, Horizontal Center, Vertical Bottom, Horizontal alignment and Vertical alignment. 
 
![image](res/image022.png)

**Move Canvas** - to move Canvas in the rendering section. You can access the tool by clicking the hand shape icon![image](res/image022.png), or using keyboard shortcut Q.

![image](res/image023.png) 

Enable left-click currently only supports four file types, which are Scene, Layer, Node and SpriteSheet files. 

You can access the tool by clicking the icon![image](res/image023.png), or using keyboard shortcut W. 

![image](res/image024.png)
 
Following tools currently only support 3D Scene files.  

![image](res/image025.png) Default state is "Move". Clicking X-axis, Y-axis or Z-axis to decide that along which axis the object moves . 

![image](res/image026.png) Click this button to change the mouse settings to “Rotate". Clicking X-axis, Y-axis or Z-axis to decide that along which axis the object rotates. 

![image](res/image027.png) Click this button to change the mouse settings to "Scale". Clicking X-axis, Y-axis or Z-axis to decide that along which axis the object scales. 

### Objects Panel 

Objects panel will display corresponding widgets according to projects' type. 

1 Objects panel is divided into four sections by default, which are Basic Objects, Widgets, Containers and Custom Widgets. 

![image](res/image028.png)

Menu Bar -> Edit -> Preferences -> General -> select "Show deprecated widgets" -> click "OK". The widget "AtlasLabel" will show. 

![image](res/image029.png)

![image](res/image030.png)

Create a widget: select a widget, drag and drop it from Widgets panel to Canvas. 

2 Only 3D widgets will be displayed when editing 3D scenes, for example, 3D Camera, Model, 3D particles, etc. 

![image](res/image031.png)
 
 In both 2D & 3D projects, when you hover the mouse over a widget, an information bubble “i” will appear at top right corner. Clicking the information bubble you can see descriptive texts of the widget and an Internet link for more information.

![image](res/image032.png)
 
###Resource Panel 

Resource panel displays all files related to a game project. Importing resources, creating projects, renaming files, deleting files, etc. can be done here. 

![image](res/image033.png)
 
Cocos Studio allows you to import an existing resource to Resource panel, you can also drag resources from Resource panel to other panels such as canvas in order to set properties.

***Note** File structure in the Resource panel is the same as that on the disk. When a file is deleted from the local file system, the linked widget will display its name in red indicating it is not available. As shown in the following figure outlined in red.* 

![image](res/image034.png)

The general process for using cocos is as follows: 

Add resources to the Resources panel -> create widgets by dragging and dropping them from Objects panel to Canvas -> set preferences of widgets -> edit Scene or Animation. 

###Canvas

***Note** Canvas will automatically adjust according to the contents on it.* 

1 When editing Scene or Layer, Canvas is displayed as shown below: 
 
![image](res/image035.png)

Canvas is the most commonly used panel in Cocos Studio. You can visually adjust the position, rotation, scaling, and anchor point of a widget in Canvas. You can also select one or multiple widgets in Canvas, and edit the widget properties using either right-click menu or Property panel.

Press the spacebar, and you can move the Canvas by dragging the mouse. You can also move the Canvas by pressing the scroll wheel on your mouse. 

![image](res/image036.png)
 
The area with black background represents the screen resolution you set.

2 When editing Nodes, Canvas is displayed as shown below: 
    
![image](res/image037.png)

3 When editing SpriteSheet, Canvas is displayed as shown below: 
 
![image](res/image038.png)

4 When editing 3D Scene, Canvas is displayed as shown below: 
 
![image](res/image039.png)

###Animation panel

Animation panel is divided into six sections: Scene Graph, Timeline, Easing Interface, Playback Control, Editing Tools and Animation list. 
 
![image](res/image040.png)

####Timeline

![image](res/image041.png)
 
In the timeline, you can insert frames and an animation curve will be created automatically between frames. 

####Easing Interface

![image](res/image042.png)
 
Easing refers to acceleration or deceleration of frames. When this function is applied, animations will look more lifelike. 

####Playback Control
 
![image](res/image043.png)

Animation playback control is to manipulate frames in the timeline. 

   &emsp;&emsp; ![image](res/image044.png): Move to the first frame. 

   &emsp;&emsp;  ![image](res/image045.png): Move to previous frame.

   &emsp;&emsp; ![image](res/image046.png): Play the animation.

   &emsp;&emsp;  ![image](res/image047.png): Move to next frame.

   &emsp;&emsp;  ![image](res/image048.png): Move to the last frame. 

   &emsp;&emsp; ![image](res/image049.png): Loop the animation or not. 

   &emsp;&emsp; ![image](res/image050.png): Playback speed of the animation. 

####Editing Tools 
 
![image](res/image051.png)

Animation editing tools provide most of the common functionality. 

![image](res/image052.png) Add a frame

Clicking on this icon will add a keyframe at a specific position on the timeline. 

![image](res/image053.png) AutoRecord Frame

What you do after clicking the icon will be recorded in the current frame, become the key frame.  By modifying the widget properties of different frames, you can create rich and colorful animation effects. You can check the modified properties by clicking![image](res/image054.png).

![image](res/image055.png)

Animation ghosting, also known as onion skin, is a viewing mode that displays a series of snapshots of frames ahead of and behind the current frame. 

![image](res/image056.png)
 
![image](res/image057.png) 

Animations can be created, deleted and renamed from within the Animation List. 

![image](res/image058.png)  New Animation

Create an animation by setting the Start and End frames. 

![image](res/image059.png)

Animation Name: animation0, from frame 0 to frame 16. 

###Scene Graph

![image](res/image060.png)
 
The Scene Graph displays a list of currently used widgets, such as buttons, maps, sound, and particle, etc. They are mapped one-to-one with the concrete widgets within Canvas. To add a widget, you can directly drag it from Objects panel to the Scene Graph (also display in the canvas), which provides a way to visually adjust the structure of the widgets. Within the Scene Graph, you can add, delete, adjust the widget’s render order, and adjust parent-child hierarchies of the widgets. 

Click ![image](res/image061.png) button to expand animation properties associated with some widget. For example,

![image](res/image062.png) 

The above picture means that `Panel_InfoBox_3` only influence three properties: Skew, Scale and Position. 

![image](res/image063.png)：to hide a widget in the canvas by selecting this check box.

![image](res/image064.png)：to lock a widget to prevent it being edited. 

***Note** You can use the scene graph to hide a widget in the canvas, or lock a widget to prevent it being edited. The operation in the Scene Graph panel, locking or hiding, only affect the display on Canvas, the effect will not be output to a game project, if you need the effect to appear in the game, please modify the properties in property panel.*

The parent-child hierarchies: Cocos Studio uses the concept of parent-child hierarchies, so that any object can become a child of another object, to establish the relationship move the object onto its parent object, will move with the parent.

###Properties panel 

In the Properties panel, you can make modifications of any widgets' properties. 

![image](res/image065.png)
 
Property panel has two tabs, Basic properties and Advanced properties. 

**Basic properties** include sections as Position and Size, General,  9-Slice and Feature.  

**Advanced properties** include control layout, sub control layout and frame events. When select one or multiple widgets in Canvas, you can adjust the corresponding attributes in the Properties panel. 

![image](res/image066.png)

**Title section**: shows the type of the currently selected widget. You can find a widget in the game by searching its name or tag. 

**Position and Size**

This section includes some settings about anchor point, position and size. Adaptive layout feature is newly added, for more information, please see [UI Layout and Multi-resolution Support](../../UI/Layout/en.md).

![image](res/image067.png)
 
**General Properties**

General properties contain basic properties of a widget, such as Visible, Scale, Rotation, Skew, etc. General properties are the same for most widgets, but there are also exceptions for some widgets, please refer to "Online Help".  

![image](res/image068.png)
 
  &emsp;&emsp;[9-Slice](../../UI/9Slice/en.md)

  &emsp;&emsp; Advanced Properties

  &emsp;&emsp; 1 [Create a Frame Event](../../Animation/AddFrameEvents/en.md)

  &emsp;&emsp; 2 [Callback Feature](../../HowToCode/CallBack/en.md)

  &emsp;&emsp; 3 [Create Custom Data](../../HowToCode/UserData/en.md)
     
    


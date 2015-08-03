#How to: Debug Browser Preview

For a JS project, after clicking “run in the browser”, these may appear something wrong with the preview effect. This tutorial aims to help you solve this problem with the following two methods. 

1 Drop the scene files used in the current browser to the list of JS projects src/resource.js. For example, 

   Original resource.js:

![image](res/image001.png)

   Modified resources. js: 

![image](res/image002.png)   

  Add the resources of current scene to g_resources=[...].

2 Enable "developer tool", find the bug according to log. 

**Chrome**

   Customize and control -> More tools -> Developer tools

![image](res/image003.png)   ![image](res/image004.png)

**360 Browser**
  
   Tools -> Developer Tools:

![image](res/image005.png)  

**Firefox**

Settings -> Developers -> Browser Console -> JS

![image](res/image006.png) ![image](res/image007.png)
   
![image](res/image008.png) 

 



#How to: Debug Browser Preview

For a JS project, after clicking “run in the browser”, these may appear something wrong with the preview effect. This tutorial aims to help you solve this problem with the following two methods. 

1 Drop the scene files used in the current browser to the list of JS projects src/resource.js. For example, 

   Original resource.js:

![image](res_en/image001.png)

   Modified resources. js: 

![image](res_en/image002.png)   

  Add the resources of current scene to g_resources=[...].

2 Enable "developer tool", find the bug according to log. 

**Chrome**

   Customize and control Google Chrome -> More tools -> Developer tools

![image](res_en/image003.png)   

**360 Browser**
  
   Tools -> Developer Tools:

**Firefox**

Settings -> Developer -> Browser Console -> JS

![image](res_en/image006.png) ![image](res_en/image007.png)
   
![image](res_en/image008.png) 

 



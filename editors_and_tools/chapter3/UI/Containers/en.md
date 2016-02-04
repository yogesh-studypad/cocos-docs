#Containers 

###1 Panel

![image](../../../studio-img/UI/Containers/image001.png)

Panel can be used to control child element's layout, also has handy features like clipping, fill color or background image. In the official example, we make extensive use of the panel to manage the layout, such as the main menu, user name, diamonds and gold they all have Panel, in order to ensure a relatively uniform layout.

![image](../../../studio-img/UI/Containers/image002.png)

**Scenario 1: Do not display the contents out of the container**

When you want to hide the content that’s bigger than the panel, you can use attribute "clipping" so the panel will clip the content.

**Scenario 2: Set the background and effects**

There are two options to fill the color: solid color background, or gradient background. You can choose color and set the opacity of the background; when you select a gradient background, you need to set the starting color and ending color, and opacity can be set separately for these two colors.

![image](../../../studio-img/UI/Containers/image003.png)

**Scenario 3: Add child controls**

On canvas, right click the selected widget, and then you can add all types of widgets as its child.

![image](../../../studio-img/UI/Containers/image004.png)

###2 ListView

![image](../../../studio-img/UI/Containers/image005.png)

ListView can auto-arrange widgets quickly. ListView is often used in game scenes where list effects are needed.

***Note** The position cannot be modified when a widget is added into ListView.*

![image](../../../studio-img/UI/Containers/image006.png)

**Scenario 1: Do not display the contents of the container outside**

When you want to hide the content that's bigger than the panel, you can use "clipping" to clip the content.

**Scenario 2: Add widgets into ListView**

When widgets are added into ListView, they will be arranged automatically. By setting features such as Scroll Direction, Alignment and Gap, positions of widgets inside ListView are settled. A ListView is thus created in horizontal or vertical direction.

###3 PageView

![image](../../../studio-img/UI/Containers/image007.png)

PageView is a container with a page flip effect, can only add basic container. PageView often used in game scenes like inventory with page flip effect, the official example, we use PageView in level selection screen, player can paging between different levels.

![image](../../../studio-img/UI/Containers/image008.png)

**Scenario 1: Do not display the contents out of the container**

When you want to hide the content that’s bigger than the panel, you can use attribute "clipping" so the panel will clip the content. As shown above, after enable Clipping, the effect is as follows:

![image](../../../studio-img/UI/Containers/image009.png)

**Scenario 2: Add flip effect**

To achieve flip effect, do the following. Add a child basic widget for ListView, and customize contents for the child widget. PageView will use the child widget automatically.

When a widget is added to PageView, it will be reset back to default settsing, including position, scale, rotation, anchor point and size. These values cannot be modified. The layout of the child widget cannot be modified as well.

###4 ScrollView

![image](../../../studio-img/UI/Containers/image010.png)

ScrollView shows scrolling effect on the touch screen, it has the ability to set the scroll area, scroll direction and other attributes. In the official example, we implemented scrollview in task selection screen (MissionSelect.csd), player can scroll the background. We set the height of the background about triple the size of a screen, so user can slide up and down the screen to view the entire map.

![image](../../../studio-img/UI/Containers/image011.png)

**Scenario 1: Do not display the contents out of the container**

When you want to hide the content that’s bigger than the panel, you can use attribute "clipping" so the panel will clip the content. As shown above, after we check the properties, the effect is as follows:

![image](../../../studio-img/UI/Containers/image012.png)

**Scenario 2: Set the size of the scrolling content**

![image](../../../studio-img/UI/Containers/image013.png)

In the above picture, area A is the size of ScrollView. When enable Clipping for the ScrollView, areas outside A will not be displayed. However, contents in area B can be displayed by scrolling to area A. Scrolling content size has to be bigger than the scrollview for the scrolling to work.

You can select the desired scroll direction: horizontal, vertical or both.

**Scenario 3: Set the rebound effect**

When ScrollView slides to screen border, the  interface will have a rebound effect if it continues to slide. To achieve this effect, you only need to enable"Bounce Back". The system will load this effect in the game.

![image](../../../studio-img/UI/Containers/image014.png)

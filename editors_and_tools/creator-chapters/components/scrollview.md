# ScrollView component reference

ScrollView is a container with scroll function. It provides a way to browse more contents in a limited display area. Generally, ScrollView will be used
along with `Mask` component, and can also be added `ScrollBar` component to show the location of the browsing content.

![scrollview-content](./scrollview/scrollview-content.png)

![scrollview-inspector](./scrollview/scrollview-inspector.png)

Click the `add component` button at the bottom of **attribute inspector** and then select `ScrollView` from `add UI component` so you can add the ScrollView component to the node.


## ScrollView attribute

| Attribute |   Function Explanation
| -------------- | ----------- |
| Content| It is a reference node to create scrollable content of ScrollView which could be a node containing a humongous picture.
| Horizontal | Boolean value, whether horizontal scroll is allowed or not.
| Vertical | Boolean value, whether vertical scroll is allowed or not.
| Inertia | Is there accelerated velocity when scrolling?
| Brake | Floating point number, the decelerating coefficient after scrolling. Value range is 0-1, if it is 1, then the scroll operation will stop immediately; if it is 0, then it will scroll until the content border.
|Elastic | Boolean value, bounce back or not.
|Bounce Duration | Floating point number, time duration for bounce back. Value range is 0-10.
|Horizontal ScrollBar| It is a reference node to create a scroll bar to show the content horizontal location.
|Vertical ScrollBar| It is a reference node to create a scroll bar to show the content vertical location.

## Detailed explanation

The ScrollView component can only work with specified content node. It calculates the location information during scrolling operation by the designated scroll direction and the length of the content node in this direction. The content node can also set auto-resize by `UIWidget`.

Normally a ScrollView node tree is as follows:

![scrollview-hierarchy](./scrollview/scrollview-hierarchy.png)

Here, the Viewport is used to define a scrolling area that can be displayed, so the Mask component will be added to Viewport. Contents that can scroll can be put in the content node or added to the child node of the content node.

## ScrollBar settings

ScrollBar is optional. You can choose to set either horizontal or vertical ScrollBar or of course set them both.

To establish a connection, you can drag a node with ScrollBar component in **hierarchy manager** to the corresponding field in ScrollView.

---

Keep moving on to [ScrollBar component reference](scrollbar.md).
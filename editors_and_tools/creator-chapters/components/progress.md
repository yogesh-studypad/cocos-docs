# ProgressBar component reference

ProgressBar is usually used to show the progress of a certain operation in the game. Add the ProgressBar component to a node and associate a 
Bar Sprite to this component so that the Bar Sprite can be controlled in the scene to show the progress.

![add-progressbar](./progress/add-progressbar.png)

Click the `add component` button at the bottom of **attribute inspector** and then selet `ProgressBar` from `add UI component` so you can add the ProgressBar component to the node.


## ProgressBar attribute

| Attribute |   Fuction Explanation
| -------------- | ----------- |
| Bar Sprite | The Sprite component that progressbar rendering needs. Can be associated by dragging a node with the `Sprite` component to it.
| Mode | Currently supports horizontal and vertical modes. Can change the initial direction by cooperatign with the `reverse` attribute.
| Total Length | The total length/width of Bar Sprite when the progressbar is 100%.
|Progress | Floating point. The data range is 0~1, values beyond that are not allowed.
|Reverse | Boolean value. The default filling direction is from left to right/from bottom to top. Switch to from right to left/from top to bottom after it has been opened.

## Detailed explanation

After adding the ProgressBar component, drag a node with `Sprite` component from **hierarchy manager** to the Bar Sprite attribute, then you can control the display of progressbar by dragging the progress slider.

Bar Sprite could be a self node, child node or any node that comes with `Sprite` component. Besides, Bar Sprite can choose Simple or
Sliced rendering modes freely.

---

Keep moving on to [Mask component reference](mask.md).

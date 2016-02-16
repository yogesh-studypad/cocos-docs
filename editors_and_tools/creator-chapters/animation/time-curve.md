# Edit time curve

We have already created some basic animations.
However, sometimes we need to realize slow-motion effects like EaseInOut, etc. between two frames. Then how could these be realized in the animation editor?

Firstly, we need to create two unequal frames on one path. For example, create two frames on a position which starts from 0,0 to 100,100, then a connecting line between these two frames will appear. Double click the connecting line and the time curve editor will open.

<a href="time-curve/main.png"><img src="time-curve/main.png" alt="main"></a>

## Use preset curve

We can choose various preset effects on the left side of the curve editor, such as: Ease In, etc..
After choosing, some preset parameters will appear on the top of the right side, which can be chosen according to your needs.

## User-defined curve

Sometimes the preset curve can't meet the needs of the animation. But we can modify the curve ourselves.
In the preview image on the bottom of the right side, there are two gray controlling points. By dragging these controlling points, the path of the curve can be modified.
If the controlling points need to be dragged outside of the visual field, you can use the mouse wheel or small plotting scale on the top right corner to zoom in/out of the preview image. The proportion supported by which ranges from 0.1 to 1.

---Continue to read [animation-event.md].

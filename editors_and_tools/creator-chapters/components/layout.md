# Layout component reference

Layout is a container component. The container can unlock the auto-layout function to automatically arrange all the sub-objects according to the specifications so that the user can use it to make list, page turning and other functions conveniently.

![add-layout](./layout/add-layout.png)

![vertical-layout](./layout/vertical-layout.png)


Click `add component` button at the bottom of **Inspector** and then select `Layout` from `add UI component`, then you add the Layout component to the node.


## Layout attribute

| Attribute |   Function Explanation
| -------------- | ----------- |
| Layout Type| Layout type, currently has NONE, HORIZONTAL and VERTICAL.
| Auto Resize | Read only attribute, indicates the current layout container will auto adapt its own size to the number and size of the sub-object.
| Margin | The space between the sub-object and the container frame in the layout. NONE mode doesn't have this attribute.
| SpacingX | The separation distance between sub-objects in the horizontal layout. NONE mode doesn't have this attribute.
| SpacingY | The separation distance between sub-objects in the vertical layout.NONE mode doesn't have this attribute.
|Horizontal Direction| When it is designated as horizontal layout, which side does the first child node start in the layout? The left or the right? Show this attribute only when the Layout Type is HORIZONTAL.
|Vertical Direction |When it is designated as vertical layout, which side does the first child node start in the layout? The upside or the downside? Show this attribute only when the Layout Type is VERTICAL.

## Detailed explanation

The default layout type is NONE after adding the Layout component. It indicates that the container won't change size and location of the sub-object. When the user places sub-object manually, the container will take the minimum rectangular region that can contain all the sub-objects as its own size.

You can switch the layout container type by altering `Layout Type` in **Inspector**, all the layout types currently only support `Auto Resize` of the container itself.

---

Continue on to read about [Script development workflow](../scripting/index.md).
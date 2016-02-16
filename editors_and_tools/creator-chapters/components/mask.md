# Mask component reference

Mask is used to specify the range where the child node can perform rendering. The node with a component that has Mask will use a constrained box (which is the range specified by `size`) of this node to create a rendered mask so all the child nodes of this node will be clipped according to this mask and the area outside the mask won't be rendered.

![add-mask](./mask/add-mask.png)

Click the `add component` button at the bottom of **attribute inspector** and then select `Mask` from `add rendering component` so you can add the Mask component to the node.


## Mask attribute

| Attribute |   Fuction Explanation
| -------------- | ----------- |
| NA |NA

## Detailed explanation

After adding the Mask component to the node, all the child nodes of this node will be affected by Mask during the rendering.

---

Keep moving on to [ScrollView component reference](scrollview.md).
# Edit sequence frame animation

We have just learnt about the operation of property frame. Now, let's see a concrete method for how to create a frame animation.

## Add a new Sprite component to node

Firstly, we need to make the node display texture normally, therefore we need to add a Sprite component to the node.
After choosing the node, choose `Add render component->Sprite` by clicking the **Add component** button in the property checker.

## Add a cc.Sprite.spriteFrame to property list

After the node is able to display texture normally, we need to create an animation path for texture.
Click `add property` in the animation editor, then choose `cc.Sprite.spriteFrame`

## Add a frame

Drag texture from the resource manager to the property frame field and put it on the `cc.Sprite.spriteFrame` path.
Then drag the texture needing to be displayed in the next frame to the designated position. Click 'Play' and the newly created animation can be previewed.

---

Continue to read [time-curve.md].
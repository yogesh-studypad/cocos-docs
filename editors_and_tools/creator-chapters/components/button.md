# Button component reference

Button component could respond to user's click action, when user click Button, the Button status itself will be changed. Besides, Button also enables user to respond to a self-defining action after click operation.

![button.png](./button/button.png)

![button-color](./button/button-color.png)

Click the `add component` button at the bottom of **attribute inspector** and select `Button` from `add UI component`, then you can add Button component to the node.

## Button attribute

| Attribute |   Function explanation
| -------------- | ----------- |
|interactable| Boolean type, if set false, then Button component enters forbidden state.
|Transition| Enumeration type, including NONE, COLOR and SPRITE. Each type corresponds to a different Transition setting. Please check more detailed information in chapter `Button Transition`.
|Click Event| Default list type is null, each event user added is composed of node reference, component name and a response function. Please check more detailed information in chapter `Button Event`


### Button Transition
Button Transition is used to designate status indicating when user click Button. Currently it has NONE,COLOR and SPRITE.

![transition](./button/transition.png)

### Color Transition

![color-transition](./button/color-transition.png)


| Attribute |   Function Explanation
| -------------- | ----------- |
|Normal| Color of Button under Normal status.
|Pressed| Color of Button under Pressed status.
|Hover| Color of Button under Hover status.
|Disabled| Color of Button under Disabled status.
|Duration| Time interval needed for Button status switching.

### Sprite Transition

![sprite-transition](./button/sprite-transition.png)

| Attribute |   Function Explanation
| -------------- | ----------- |
|Normal| SpriteFrame of Button under Normal status.
|Pressed| SpriteFrame of Button under Pressed status.
|Hover| SpriteFrame of Button under Hover status.
|Disabled| SpriteFrame of Button under Disabled status.

### Button event

![button-event](./button/button-event.png)


| Attribute |   Function Explanation
| -------------- | ----------- |
|Target| Node with script component.
|Component| Script component name.
|Handler| Assign a callback function which will be triggered when user click Button and release.

#### Detailed explanation

Button currently only support On Click event, which means the corresponding callback function will be triggered only when users click and release Button.

---

Keep moving on to [ProgressBar component reference](progress.md) 。

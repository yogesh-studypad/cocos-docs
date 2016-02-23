# Button component reference

The button component responds to a click from the user. When the user clicks a Button, its status will change. In addition, users can assign a custom behavior to buttons' click event.

![button.png](./button/button.png)

![button-color](./button/button-color.png)

Click the ‘add component’ button at the bottom of the **attribute inspector** and select ‘Button’ from ‘add UI component’. You can then add the Button component to the node.

## Button attribute

| Attribute |   Function explanation
| -------------- | ----------- |
|Interactable| Boolean type, if set to false then the Button component enters the forbidden state.
|Transition| Enumeration type, including NONE, COLOR and SPRITE. Each type corresponds to a different Transition setting. Please check more detailed information in the chapter ‘Button Transition’.
|Click Event| Default list type is null. Each event added by the user is composed of the node reference, component name and a response function. Please check more detailed information in the chapter ‘Button Event’.


### Button Transition
Button Transition is used to indicate the status of the Button when clicked by the user. Currently the types available are NONE, COLOR and SPRITE.

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
|Target| Node with the script component.
|Component| Script component name.
|Handler| Assign a call-back function which will be triggered when the user clicks and releases the Button.

#### Detailed explanation

Button currently only supports the On Click event. This means only when users click and release the Button will the corresponding call-back function be triggered.

---

Keep moving on to read [ProgressBar Component reference](progress.md).

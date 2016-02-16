# Add an animation event

In the game, we always need to implement some function methods at the end of animation or at a certain time of a frame. Then how could we realize this in the animation editor?

## Add an event

Firstly, choose a certain position and click 'add event' button at the far left side of button field, then a white rectangle will appear on the timeline, which is the newly added event.

<a href="animation-event/button.png"><img src="animation-event/button.png" alt="button"></a>

## Delete an event

Double click the newly emerged white rectangle. Click the Recycle icon behind Function after opening the event editor. Then a prompt for deleting this event will appear. Click Confirm button and it will be deleted.

<a href="animation-event/delete.png"><img src="animation-event/delete.png" alt="delete"></a>

Also, you can right click Event in animation editor to choose Delete.

## Designate event trigger function and import parameters

Double click the newly emerged white rectangle, event editor will open. In the editor, we can manually input the function name that needs to be transmitted. When triggering, the corresponding method will be matched in each component according to this function name.

If you want add imported parameters, you can click `+` or `-` near Params. Only parameters of 3 types are supported: Boolean, String, Number. 

---

Continue to read [scripting-animation.md].

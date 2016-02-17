# attribute declaration

By attribute declaration in the component script, we can visually show the field of the script component in **attribute inspector** so that
we can adjust the attribute value in the scene easily.

To declare the attribute, all you need to do is put the attribute name and parameters in the cc.Class defining `properties` field, for instance:

```javascript
  cc.Class({
    extends: cc.Component,
    properties: {
      userID: 20,
      userName: 'Foobar'
    }
  });
```

At this time, you can see in **attribute inspector**, the two properties you just defined show in the inspector panel:

![properties-in-inspector](assets/properties-in-inspector.png)

## Declaration method

In Cocos Creator, we provide two kinds of attribute declaration methods: 

### Simple declaration

In most cases, we can use simple declaration. When the attribute declared is Javascript built-in type `boolean`,
`string` and `number`, it can be written directly into:

```javascript
  properties: {
    foo: 20,
    bar: 'Hello World!',
    foobar: false,
  }
```

When the delared attribute type is inherited from `cc.ValueType`（ such as `cc.Vec2`，`cc.Color`，`cc.Size` etc.）,
then it can be assigned with an example, such as:

```javascript
  properties: {
    foo: new cc.Vec2(10,20),
    bar: new cc.Color(255, 255, 255, 128),
  }
```

When the delared attribute type is inherited from `cc.Class` （such as `cc.Node`，`cc.Component` etc.）, you can finish the declaration
by writing its constructor in the delaration, such as:

```javascript
  properties: {
    foo: cc.Node,
    bar: cc.Sprite,
  }
```

**Note:** Other than the situations above, we all need to use complete declaration to write for other types (such as array).

### Complete declaration

Under some circumstances, we need to add parameters for the attribute declaration. These parameters control the attribute display mode in **attribute inspector** , and
the attribute behavior in the serial scene process. For example:

```javascript
  properties: {
    score: {
      default: 0,
      displayName: 'Score (player)',
      tooltip: 'The score of player',
    }
  }
```

The code above stipulates the attribute name of score in **attribute inspector** will be shown as “Score (player)”,
and when the cursor moves on to the parameter, it will show the corresponding Tooltip.

Below are the general parameters. For detailed usage please refer to[attribute parameter](/manual/scripting/attributes).

- default: set default value for attribute
- type: restrict data type of attribute
- visible: the attribute is invisible in the Inspector panel if set to false
- serializable: do not serialize this attribute if set to false
- displayName: display the assigned name on the Inspector panel
- tooltip: add Tooltip of attribute in the Inspector panel

## Declaration method for special type

### Array declaration

The default of array must be set to `[]`, if you are about to edit in **attribute inspector**, then you also need to set the type into constructor, enumeration,
or `'Integer'`,`'Float'`,`'Boolean'` and `'String'`.

```js
  properties: {
    names: {
      default: [],
      type: ['String']
    },

    enemies: {
      default: [],
      type: [cc.Node]
    },
  }
```

### get/set declaration

After setting get or set in the attribute, when you access the attribute, the pre-defined get or set method will be triggered. Defining the method is as follows:

```js
properties: {
  width: {
    get: function () {
      return this._width;
    },
    set: function (value) {
      this._width = value;
    }
  }
}
```

**Note:** You can define the get method only so this is like one attribute of readonly.

For more attribute parameters, please read [attribute parameter](reference/attributes.md).

---

Keep moving to [Access node and other component](access-node-component.md). 

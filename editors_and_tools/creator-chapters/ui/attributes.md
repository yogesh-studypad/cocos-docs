# Attribute reference

### Attribute inspector corresponding attribute

Parameter name  | Explanation | Type | Default
--- | --- |:---:|:---:
type | restrict the data type for attribute | (Any) | undefined
visible | show or hide in the **attribute inspector** panel| boolean | (note 1)
displayName | show another name in the **attribute inspector** panel | string |
tooltip | add Tooltip for attribute in the **attribute inspector** panel | string |
multiline | use multiple lines text box in the **attribute inspector** panel | boolean | false
readonly | read-only in the **attribute inspector** panel | boolean | false
range | restrict the maximum and minimum values in slider form | [min, max] |

### Serialization associated attributes

These attributes cannot be used for the get method.

Parameter name  | Explanation | Type | Default
--- | --- |:---:|:---:
serializable | serialize this attribute | boolean | true
editorOnly | reject this attribute before exporting the project | boolean | false

### Other attribute

Parameter name  | Explanation | Type | remark
--- | --- |:---:|:---:
default | define default for the attribute | (Any) | (note 2,3)
url | this attribute is the URL of an assigned asset | function () {} |
notify | trigger a specific method when altering the attribute | function (oldValue) {} | the default attribute is needed to define
override | when reloading the super class attribute, this parameter needs to be defined as true | boolean | default is false
animatable | whether this attribute can be altered by animation | boolean | default is true

**Note 1:** The visibility default is determined by the attribute name. When the attribute name starts with an underscore `_`, then the default is set to hide, otherwise it is by default set to show.

**Note 2:** Alterations to the serializable attribute default valuen won't influence a scene that has already been saved or opened.

**Note 3:** Default can be defined as a function, so the default initialization for `Array` and `Object` can be done safely. For example:

```javascript
  properties: {
    names: {
      default: function () {
        return ['foo', 'bar', 'foobar'];
      },
      type: [cc.String]
    },
  }
```

#.canPresentDialog(dialog)

This method is to determine if the device is capable of presenting the particular dialog, as documented in [dialog doc](./dialog.md). These dialogs this method can check include:

- The Share Dialog
- The Message Dialog

If it is capable, it returns _true_, otherwise it returns _false_.

##Parameters

```javascript
plugin.FacebookAgent.prototype.dialog = function(info){}
```

|Name|Type|Required|Description|
|----|----|--------|-----------|
|dialog|string|Yes|The dialog type that you want to trigger.|

###Dialog types:

|Value|Dialog type|
|-----|-----------|
|share_link|Share Dialog for sharing a link|
|share_photo|Share Dialog for sharing a photo|
|share_open_graph|Share Dialog for sharing a structured Open Graph story|
|message_link|Message Dialog for messaging a link to friends|
|message_photo|Message Dialog for messaging a photo to friends|
|message_open_graph|Message Dialog for messaging an Open Graph story to friends|

##Example

```javascript
//TODO
```

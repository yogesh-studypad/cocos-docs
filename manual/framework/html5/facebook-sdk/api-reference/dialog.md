#dialog

Share something or send something as message to your friend, if user have installed Facebook app or Facebook Messenger app on his device, this function will open the application to finish the share process, otherwise it will try to open a web view dialog to share or send the message. If anything goes wrong, the callback will be invoked with error.

##Parameters

```javascript
plugin.FacebookAgent.prototype.dialog = function(info, callback){}
```
|Name|Type|Description|
|----|----|-----------|
|info|Object|The content to be shared. It should have `dialog`, and some other properties. The dialog property determine the type of Facebook dialog you want to trigger.|
|callback|Function|Callback for receiving the result, if result code equals `plugin.FacebookAgent.CodeSucceed`, then the function call is returned successfully, developer can retrieve the result message or json Object from the message.|

The `dialog` property of info can be one of these:

|value|dialog type|
|-----|-----------|
|share_link|Share a link to Facebook using Facebook app|
|share_photo|Share an image to Facebook using Facebook app|
|share_open_graph|Share Open Graph story to Facebook using Facebook app|
|message_link|Send a link to a friend using Facebook Messenger app|
|share_photo|Send an image to a friend using Facebook Messenger app|
|share_open_graph|Send a Open Graph story to a friend using Facebook Messenger app|

properties of info for link type:

|Name|Description|
|----|-----------|
|title|Link title|
|link|Link url|
|imageUrl|Image for the link|
|description|Link description|

properties of info for OpenGraph type:

|Name|Description|
|----|-----------|
|action_type|Open Graph Action type|
|preview_property|Open Graph Object type|
|others|Other parameters for the Open Graph story|

properties of info for photo type:

|Name|Description|
|----|-----------|
|photo|the path of the photo|

##Example

```javascript
var info = {
    "dialog": "share_link",
    "description": "Cocos2d-x is a great game engine",
    "title": "Cocos2d-x",
    "link": "http://www.cocos2d-x.org",
    "imageUrl": "http://files.cocos2d-x.org/images/orgsite/logo.png"
};
facebook.dialog(map, function (code, response) {
    if(code == plugin.FacebookAgent.CodeSucceed){
        //success
    }
});
```
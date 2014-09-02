#share

Share a message to your Facebook, on iOS or Android, if user have installed Facebook app on his device, this function will open Facebook app to finish the share process, otherwise it will open a web view dialog to share a message. If anything goes wrong, the callback will be invoked with error.

##Parameters

```javascript
plugin.FacebookAgent.prototype.share = function(info, callback){}
```

|Name|Type|Description|
|----|----|-----------|
|info|Object|The content to be shared. It should have `description`, `title`, `link` and `imageUrl`.|
|callback|Function|Callback for receiving the result, if result code equals `plugin.FacebookAgent.CodeSucceed`, then the function call is returned successfully, developer can retrieve the result message or json Object from the message.|

##Example

```javascript
var info = {
    "description": "Cocos2d-x is a great game engine",
    "title": "Cocos2d-x",
    "link": "http://www.cocos2d-x.org",
    "imageUrl": "http://files.cocos2d-x.org/images/orgsite/logo.png"
};

facebook.share(info, function(code, response){
    if(code == plugin.FacebookAgent.CodeSucceed){
        cc.log("share succeed");
    }
});
```
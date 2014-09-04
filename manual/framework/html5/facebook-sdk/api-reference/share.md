#share

On iOS or Android, if the user has installed Facebook native app on his/her device, triggers Share dialog, otherwise it falls back to trigger a web dialog. Please refer to [Sharing in iOS](https://developers.facebook.com/docs/ios/share) and [Sharing in Android](https://developers.facebook.com/docs/android/share) for more details. 

On Web, it triggers Share Dialog. Please refer to [Share Dialog](https://developers.facebook.com/docs/sharing/reference/share-dialog) for more details.

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
#.share(info, callback)

On iOS or Android, if the user has installed Facebook native app on his/her device, this function triggers Share Dialog in the native app, otherwise it falls back automatically to trigger a web dialog in your own app. Please refer to [Sharing in iOS](https://developers.facebook.com/docs/ios/share) and [Sharing in Android](https://developers.facebook.com/docs/android/share) for more details. Note that your app does not have to be using Facebook Login for people to be able to share via the Share Dialog.

On Web, it triggers Share Dialog. Please refer to [Share Dialog](https://developers.facebook.com/docs/sharing/reference/share-dialog) for more details.

##Parameters

```javascript
plugin.FacebookAgent.prototype.share = function(info, callback){}
```

|Name|Type|Required|Description|
|----|----|--------|-----------|
|info|Object|Yes|The content to be shared.|
|callback|Function|No|This callback will be invoked with a result code and a response object or an error message.|

####`info` content:

|Name|Type|Required|Description|
|----|----|--------|-----------|
|link|String|Yes|The link's url|
|title|String|No|The link's title|
|imageUrl|String|No|The image for the link|
|description|String|No|The link's description|

##Callback function and response object

The callback function definition is showing below, if the sharing action succeed, the result `code` will be `plugin.FacebookAgent.CODE_SUCCEED`, otherwise, it will indicate the error code with an error message as the `response` parameter.

```javascript
var callback = function (code, response) {}
```

Meanwhile, the response object is only available when the sharing action succeed, here is an example:

```javascript
// The response object 
{
    // The id of the post which have been shared
    "post_id" : "12345678"
}
```

##Example

```javascript
// The content to be shared
var info = {
    "description": "Cocos2d-x is a great game engine",
    "title": "Cocos2d-x",
    "link": "http://www.cocos2d-x.org",
    "imageUrl": "http://files.cocos2d-x.org/images/orgsite/logo.png"
};

// Assuming that facebook is the instance of FacebookAgent
facebook.share(info, function(code, response){
    if(code == plugin.FacebookAgent.CODE_SUCCEED){
        cc.log("share succeed");
    } else {
        cc.log("Sharing failed, error #" + code + ": " + response);
    }
});
```
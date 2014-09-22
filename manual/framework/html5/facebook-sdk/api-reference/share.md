#.share(info, callback)

Allow people to update their status from your app.

On iOS or Android, if the person has installed the native Facebook for iOS app or the native Facebook for Android app in the device, this method does an app switch to the native Facebook for iOS app or the native Facebook for Android app installed in the device, from which the person shares the content. Then it returns to your app once people have shared. Note that your app does not have to be using Facebook Login for people to be able to share via the Share Dialog. Otherwise, if the person does not have the native Facebook for iOS app or the native Facebook for Android app installed in the device, the method automatically falls back to the Feed Dialog (a web dialog that doesn't need the native Facebook for iOS app or the native Facebook for Android app installed). Please visit [Sharing in iOS](http://developers.facebook.com/docs/ios/share) and [Sharing in Android](http://developers.facebook.com/docs/android/share) for more details.

On Web, it triggers a Share Dialog through Javascript. Please visit [Share Dialog](https://developers.facebook.com/docs/sharing/reference/share-dialog) for more details.

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

If the sharing succeeds, `code` is `plugin.FacebookAgent.CODE_SUCCEED` and `response` is a JSON containing the `post_id` as the form below,
```javascript
{
    // The id of the post which has been shared
    "post_id" : "1697818070_220407711431887"
}
```

If the sharing fails, `code` is error code (refer to link here ???) and `response` is a JSON containing error message as the form below,

```javascript
{
    "error" : "FBErrorDialogInvalidShareParameters"
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

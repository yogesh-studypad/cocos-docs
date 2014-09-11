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
|callback|Function|Yes|Callback function containing a result code and a JSON response.|


##Callback function

```javascript
var callback = function (code, response) {}
```

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
facebook.share(function(code, response){
    if(code == plugin.FacebookAgent.CODE_SUCCEED){
        cc.log("sharing succeeded");
    } else {
        cc.log("Sharing failed, error #" + code + ": " + response.error);
    }
});
```

#.dialog(info, callback) - for sharing

Allow people to share a link, a structured [Open Graph](https://developers.facebook.com/products/open-graph) story or a photo from your app. 

On iOS or Android, if the person has installed the native Facebook for iOS app or the native Facebook for Android app in the device, this method does an app switch to the native Facebook for iOS app or the native Facebook for Android app installed in the device, from which the person shares the content. Then it returns to your app once people have shared. Please note that your app does not have to be using Facebook Login for people to be able to share via the Share Dialog. Otherwise, if the person does not have the native Facebook for iOS app or the native Facebook for Android app installed in the device, the method automatically falls back to the Feed Dialog (a web dialog that doesn't need the native Facebook for iOS app or the native Facebook for Android app installed). Please visit [Sharing in iOS](http://developers.facebook.com/docs/ios/share) and [Sharing in Android](http://developers.facebook.com/docs/android/share) for more details.

On Web, it triggers a Share Dialog through Javascript. Please note that you can only share a link or a structured Open Graph story with Share Dialog on web. Please visit [Share Dialog](https://developers.facebook.com/docs/sharing/reference/share-dialog) for more details.

##Parameters

```javascript
plugin.FacebookAgent.prototype.dialog = function(info, callback){}
```

|Name|Type|Required|Description|
|----|----|--------|-----------|
|info|Object|Yes|The object to contain the details for the sharing.|
|callback|Function|Yes|Callback function containing a result code and a JSON response.|

####Properties of `info` object:

|Name|Type|Required|Description|
|----|----|--------|-----------|
|dialog|String|Yes|This property determines the share dialog type that you want to trigger.|
|Additional properties|Various|Yes|Additional properties are based on the share dialog type you use. See details below.|

####Share dialog types:

|Value|Dialog type|
|-----|-----------|
|share_link|Share a link|
|share_photo|Share a photo|
|share_open_graph|Share a structured Open Graph story|

####Additional properties of `info` object based on each share dialog type:

1. share_link

    |Name|Type|Required|Description|
    |----|----|--------|-----------|
    |link|String|Yes|The URL of the item to be shared.|
    |title|String|No|The title of the item to be shared.|
    |caption|String|No|The subtitle of the item to be shared.|
    |imageUrl|String|No|The URL of the image of the item to be shared.|
    |description|String|No|the description of the item to be shared.|

2. share_photo

    |Name|Type|Required|Description|
    |----|----|--------|-----------|
    |photo|String|Yes|The path of the photo|

3. share_open_graph

    |Name|Type|Required|Description|
    |----|----|--------|-----------|
    |action_type|String|Yes|Open Graph Action type|
    |preview_property|String|No|Open Graph Object type|
    |others|Various|No|Other parameters for the Open Graph story|

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

1. share_link

    ```javascript
    var info = {
        "dialog": "share_link",
        "description": "Cocos2d-x is a great game engine",
        "title": "Cocos2d-x",
        "link": "http://www.cocos2d-x.org",
        "imageUrl": "http://files.cocos2d-x.org/images/orgsite/logo.png"
    };
    
    var facebook = plugin.FacebookAgent.getInstance();
    facebook.dialog(info, function (code, response) {
        if(code == plugin.FacebookAgent.CODE_SUCCEED){
            // Succeed
        } else {
            cc.log("Sharing failed, error #" + code + ": " + response);
        }
    });
    ```
    
2. share_photo

    ```javascript
    var info = {
        "dialog": "share_photo",
        "photo": "/User/XXX/Documents/a.png"
    };
    
    var facebook = plugin.FacebookAgent.getInstance();
    facebook.dialog(info, function (code, response) {
        if(code == plugin.FacebookAgent.CODE_SUCCEED){
            // Succeed
        } else {
            cc.log("Sharing failed, error #" + code + ": " + response);
        }
    });
    ```
    
3. share_open_graph

    ```javascript
    var info = {
        "dialog": "share_open_graph",
        "action_type": "cocostestmyfc:share",
        "preview_property": "cocos_document",
        "title": "Cocos2d-JS Game Engine",
        "image": "http://files.cocos2d-x.org/images/orgsite/logo.png",
        "url": "http://cocos2d-x.org/docs/manual/framework/html5/en",
        "description": "cocos document"
    };
    
    var facebook = plugin.FacebookAgent.getInstance();
    facebook.dialog(info, function (code, response) {
        if(code == plugin.FacebookAgent.CODE_SUCCEED){
            // Succeed
        } else {
            cc.log("Sharing failed, error #" + code + ": " + response);
        }
    });
    ```

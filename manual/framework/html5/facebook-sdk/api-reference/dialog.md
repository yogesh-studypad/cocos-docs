#.dialog(info, callback)

This method is used to trigger different forms of Facebook created UI dialogs. These dialogs include:

- The Share Dialog for one-to-many sharing on Facebook.
- The Message Dialog for sending messages to friends.
- The Feed Dialog is a web-based dialog for sharing that works on all devices, even if people don't have the Facebook for iOS app or Facebook for Android app installed, at the expense of an optimum experience for people using your apps (compared to the Share Dialog). 

##Parameters

```javascript
plugin.FacebookAgent.prototype.dialog = function(info, callback){}
```

|Name|Type|Required|Description|
|----|----|--------|-----------|
|info|Object|Yes|The object to contain the details of the sharing.|
|callback|Function|No|Callback function containing a result code and a JSON response.|

###Properties of `info` object:

|Name|Type|Required|Description|
|----|----|--------|-----------|
|dialog|String|Yes|This property determines the share dialog type that you want to trigger.|
|Additional properties|Various|Yes|Additional properties are based on the share dialog type you use. See details below.|


##Share Dialog

Allow people to share a link, a structured [Open Graph](https://developers.facebook.com/products/open-graph) story or a photo from your app. 

On iOS or Android, if the person has installed the native Facebook for iOS app or the native Facebook for Android app in the device, this method does an app switch to the native Facebook for iOS app or the native Facebook for Android app installed in the device, from which the person shares the content. Then it returns to your app once people have shared. Please note that your app does not have to be using Facebook Login for people to be able to share via the Share Dialog. Otherwise, if the person does not have the native Facebook for iOS app or the native Facebook for Android app installed in the device, the method automatically falls back to the Feed Dialog (a web dialog that doesn't need the native Facebook for iOS app or the native Facebook for Android app installed). Please visit [Sharing in iOS](http://developers.facebook.com/docs/ios/share) and [Sharing in Android](http://developers.facebook.com/docs/android/share) for more details.

On Web, it triggers a Share Dialog through Javascript. Please note that you can only share a link or a structured Open Graph story with Share Dialog on web. Please visit [Share Dialog](https://developers.facebook.com/docs/sharing/reference/share-dialog) for more details.


###Share Dialog types:

|Value|Dialog type|
|-----|-----------|
|share_link|Share a link|
|share_photo|Share a photo|
|share_open_graph|Share a structured Open Graph story|

###Additional properties of `info` object based on each Share Dialog type:

1.`share_link`

|Name|Type|Description|Default|
|----|----|--------|-------|
|to|string|The Facebook user ID or username of the user on whose timeline the story should be posted|The current user|
|link|string|The URL to which this post should link|The base URL of the posting application, as configured in the Developer App|
|name|string|The name of the story, shown at the top and rendered as a hyperlink with href set to link|The app name, as configured in the Developer App|
|caption|string|A short description, rendered below linkName in the story|The app base URL|
|description|string|A longer description, rendered as the main body of the story|None|
|picture|string|The URL of a picture, in PNG of JPEG format, to display beside the story; see the Feed Dialog documentation for details|None|
|mediaSource|string|The URL of audio or video content to display beside the story; see Feed Gaming documentation for details|None|
|actionName|string|The text of the action link; see actionLink, below|None|
|actionLink|string|A link rendered at the bottom of the story which can optionally have a different target than the main story link; see documentation|None|
|reference|string|A name for the category of feed post, used in Facebook Insights to help you measure the performance of different types of post|None|
|properties|Dictionary<string,string[]>|Links which will be rendered at the bottom of the Feed story. Keys must be strings. Values can be either strings (in which case the story will have the key as text and the value as the link URL), or length-2 string arrays where the 0th value is the text and the 1st value the URL to link to.|None|

2.`share_photo`

Please note that you can only share a photo with Share Dialog on iOS and Android. 

|Name|Type|Required|Description|
|----|----|--------|-----------|
|photo|String|Yes|The path of the photo|


3.`share_photo`

Please note that you can only share a structured Open Graph story with Share Dialog on iOS and Android. 

Coming soon...

###Callback function

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

If the sharing fails, `code` is error code and `response` is a JSON containing error message as the form below,

```javascript
{
    "error" : "FBErrorDialogInvalidShareParameters"
}
```

###Example

1. share a link

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
    
2. share a photo

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
    
3. share an Open Graph story

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

##Message Dialog

Allow people to Message a link, a structured [Open Graph](https://developers.facebook.com/products/open-graph) story or a photo from your app to their friends. 

On iOS or Android, it triggers the Message Dialog. The Message Dialog requires that the user has the Facebook Messenger app installed on their device. Please refer to [Sharing in iOS](https://developers.facebook.com/docs/ios/share#message-dialog) and [Sharing in Android](https://developers.facebook.com/docs/android/share#message-dialog) for more details. Note that your app does not have to be using Facebook Login for people to be able to share via the Message Dialog.

On Web, it can only message a link to the user's friends. Please refer to [Send Dialog](https://developers.facebook.com/docs/sharing/reference/send-dialog) for more details.

###Message Dialog types:

|Value|Dialog type|
|-----|-----------|
|message_link|Message a link to friends|
|message_photo|Message a photo to friends|
|message_open_graph|Message an Open Graph story to friends|

###Additional properties of `info` object for each message dialog type:

1.`message_link`

|Name|Type|Description|
|----|----|--------|
|link|string|the url we want to share.|
|name|string|a title.|
|caption|string|a subtitle.|
|description|string|a snippet of text describing the content of the link.|
|picture|string|the url of a thumbnail to associate with the post.|

2.`message_photo`

Please note that you can only share photos with Message Dialog on iOS and Android. 

|Name|Type|Required|Description|
|----|----|--------|-----------|
|photo|String|Yes|The path of the photo|

3.`message_open_graph`

Please note that you can only share a structured Open Graph story with Message Dialog on iOS and Android. 

Coming soon...

###Callback function

```javascript
var callback = function (code, response) {}
```

If messaging succeeds, `code` is `plugin.FacebookAgent.CODE_SUCCEED` and `response` is a JSON containing the `???` as the form below,
```javascript
{
    // The id of the post which has been shared
    //TODO
}
```

If the messaging fails, `code` is error code and `response` is a JSON containing error message as the form below,

```javascript
{
    "error" : TODO
}
```

##Example

1. message a link

    ```javascript
    var info = {
        "dialog": "message_link",
        "description": "Cocos2d-x is a great game engine",
        "title": "Cocos2d-x",
        "link": "http://www.cocos2d-x.org",
        "imageUrl": "http://files.cocos2d-x.org/images/orgsite/logo.png"
    };
    facebook.dialog(info, function (code, response) {
        if(code == plugin.FacebookAgent.CODE_SUCCEED){
            // Succeed
        } else {
            cc.log("Failed to send the message, error #" + code + ": " + response);
        }
    });
    ```
    
2. message a photo

    ```javascript
    var info = {
        "dialog": "message_photo",
        "photo": "/User/XXX/Documents/a.png"
    };
    facebook.dialog(info, function (code, response) {
        if(code == plugin.FacebookAgent.CODE_SUCCEED){
            // Succeed
        } else {
            cc.log("Failed to send the message, error #" + code + ": " + response);
        }
    });
    ```
    
3. message an Open Graph story

    ```javascript
    var info = {
        "dialog": "message_open_graph",
        "action_type": "cocostestmyfc:share",
        "preview_property": "cocos_document",
        "title": "Cocos2d-JS Game Engine",
        "image": "http://files.cocos2d-x.org/images/orgsite/logo.png",
        "url": "http://cocos2d-x.org/docs/manual/framework/html5/en",
        "description": "cocos document"
    };
    facebook.dialog(info, function (code, response) {
        if(code == plugin.FacebookAgent.CODE_SUCCEED){
            // Succeed
        } else {
            cc.log("Failed to send the message, error #" + code + ": " + response);
        }
    });
    ```
    
##Feed Dialog

The Feed dialog publishes posts to the Facebook newsfeed. The Feed dialog is a web-based dialog that works on all devices, even if people don't have the Facebook for iOS app or Facebook for Android app installed, at the expense of an optimum experience for people using your apps (compared to the Share Dialog).

On iOS or Android, since the Feed dialog opens a web page for sharing, it must start by asking people for their Facebook credentials in order to verify their identity, which disrupts the sharing flow. People are also asked to re-enter their credentials over time as their password changes. The Feed dialog does not support Open Graph and supports only the basic attachment model which includes a link, title/description text and an image. So we recommend that you use the Share Dialog and you implement the Feed Dialog as fallback for the cases where the Facebook for iOS app or the Facebook for Android app is not present or the Share Dialog is not supported (for example, due to an old version of the Facebook for iOS app or the Facebook for Android app being installed). As mentioned, the Feed dialog does not support publishing Open Graph stories, so if you're using the Feed Dialog as fallback for the Share Dialog when publishing an Open Graph story you will need to adapt the contents to post a link (optionally with an image and text) instead.

On Web, you should always use the Share Dialog and the Feed Dialog for web has already been deprecated since Facebook API Version 2.0.

###Properties of `info` object:

|Name|Type|Description|Default|
|----|----|--------|-----------|
|dialog|String|You should use `feed_dialog`|None|
|to|string|The Facebook user ID or username of the user on whose timeline the story should be posted|The current user|
|link|string|The URL to which this post should link|The base URL of the posting application, as configured in the Developer App|
|name|string|The name of the story, shown at the top and rendered as a hyperlink with href set to link|The app name, as configured in the Developer App|
|caption|string|A short description, rendered below linkName in the story|The app base URL|
|description|string|A longer description, rendered as the main body of the story|None|
|picture|string|The URL of a picture, in PNG of JPEG format, to display beside the story; see the Feed Dialog documentation for details|None|

###Callback function

```javascript
var callback = function (code, response) {}
```

If sharing succeeds, `code` is `plugin.FacebookAgent.CODE_SUCCEED` and `response` is a JSON containing the `???` as the form below,
```javascript
{
    // The id of the post which has been shared
    //TODO
}
```

If the sharing fails, `code` is error code and `response` is a JSON containing error message as the form below,

```javascript
{
    "error" : TODO
}
```

##Example

```javascript
var info = {
    "dialog": "feed_dialog",
    "link": "http://www.cocos2d-x.org",
    "name": "Cocos2d-x",
    "description": "Cocos2d-x is a great game engine",
    "picture": "http://files.cocos2d-x.org/images/orgsite/logo.png"
};
facebook.dialog(info, function (code, response) {
    if(code == plugin.FacebookAgent.CODE_SUCCEED){
        // Succeed
    } else {
        cc.log("Failed to send the message, error #" + code + ": " + response);
    }
});
```    

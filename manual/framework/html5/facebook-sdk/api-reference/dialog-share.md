#.dialog(info, callback) (for sharing)

Share a link, a structured [Open Graph](https://developers.facebook.com/products/open-graph) story or a photo from your app to the user’s timeline and their friends’ newsfeed. 

On iOS or Android, if the user has installed Facebook native app on his/her device, it triggers Share Dialog in the native app. If the user does not have Facebook native app installed on his/her device, it falls back automatically to trigger a web dialog. Please refer to [Sharing in iOS](https://developers.facebook.com/docs/ios/share) and [Sharing in Android](https://developers.facebook.com/docs/android/share) for more details. Note that your app does not have to be using Facebook Login for people to be able to share via the Share Dialog.

On Web, it can only share a link or a structured Open Graph story with web Share Dialog. Please refer to [Share Dialog](https://developers.facebook.com/docs/sharing/reference/share-dialog) for more details.

##Parameters

```javascript
plugin.FacebookAgent.prototype.dialog = function(info, callback){}
```

|Name|Type|Required|Description|
|----|----|--------|-----------|
|info|Object|Yes|The content to be shared.|
|callback|Function|No|This callback will be invoked with a result code and a response object or an error message.|

####`info` content:

|Name|Type|Required|Description|
|----|----|--------|-----------|
|dialog|String|Yes|The property determine the type of Facebook dialog you want to trigger.|
|Additional properties|Various|Yes|Additional properties varie for each share dialog type, see detailed list below.|

####The share dialog type can be one of these:

|Value|Dialog type|
|-----|-----------|
|share_link|Share a link to Facebook using Share Dialog|
|share_photo|Share an image to Facebook using Share Dialog|
|share_open_graph|Share an Open Graph story to Facebook using Share Dialog|

####Additional properties of `info` object for each share dialog type:

1. share_link

    |Name|Type|Required|Description|
    |----|----|--------|-----------|
    |link|String|Yes|The link's url|
    |title|String|No|The link's title|
    |imageUrl|String|No|The image for the link|
    |description|String|No|The link's description|

2. share_photo

    |Name|Type|Required|Description|
    |----|----|--------|-----------|
    |photo|String|Yes|The path of the photo|

3. share_open_graph

    |Name|Type|Required|Description|
    |----|----|--------|-----------|
    |action_type|String|Yes|Open Graph Action type|
    |preview_property|String|Yes|Open Graph Object type|
    |others|Various|Yes|Other parameters for the Open Graph story|

##Callback function and response object

The callback function definition is showing below, if the sharing action succeed, the result `code` will be `plugin.FacebookAgent.CODE_SUCCEED`, otherwise, it will indicate the error code with an error message as the `response` parameter.

```javascript
var callback = function (code, response) {}
```

Meanwhile, the response object is only available when the sharing action succeed, examples are showing below for each share dialog type:

1. share_link

    ```javascript
    // The response object 
    {
        // The id of the post which have been shared
        "post_id" : "12345678"
    }
    ```
    
2. share_photo

    ```javascript
    // The response object 
    {
        // The id of the post which have been shared
        "post_id" : "12345678"
    }
    ```
    
3. share_open_graph

    ```javascript
    // The response object 
    {
        // The id of the post which have been shared
        "post_id" : "12345678"
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
    facebook.dialog(info, function (code, response) {
        if(code == plugin.FacebookAgent.CODE_SUCCEED){
            // Succeed
        } else {
            cc.log("Sharing failed, error #" + code + ": " + response);
        }
    });
    ```
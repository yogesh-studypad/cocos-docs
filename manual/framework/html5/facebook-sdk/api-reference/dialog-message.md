#.dialog(info, callback) (for sending messages)

Message a link, a structured [Open Graph](https://developers.facebook.com/products/open-graph) story or a photo from your app to the user’s friends. 

On iOS or Android, it triggers the Message Dialog. The Message Dialog requires that the user has the Facebook Messenger app installed on their device. Please refer to [Sharing in iOS](https://developers.facebook.com/docs/ios/share#message-dialog) and [Sharing in Android](https://developers.facebook.com/docs/android/share#message-dialog) for more details. Note that your app does not have to be using Facebook Login for people to be able to share via the Message Dialog.

On Web, it can only message a link to the user's friends. Please refer to [Send Dialog](https://developers.facebook.com/docs/sharing/reference/send-dialog) for more details.

##Parameters

```javascript
plugin.FacebookAgent.prototype.dialog = function(info, callback){}
```

|Name|Type|Required|Description|
|----|----|--------|-----------|
|info|Object|Yes|The content to be sent.|
|callback|Function|No|This callback will be invoked with a result code and a response object or an error message.|

####`info` content:

|Name|Type|Required|Description|
|----|----|--------|-----------|
|dialog|String|Yes|The property determine the type of Facebook dialog you want to trigger.|
|Additional properties|Various|Yes|Additional properties varie for each message dialog type, see detailed list below.|

####The message dialog type can be one of these:

|Value|Dialog type|
|-----|-----------|
|message_link|Message a link to the user's friends using Message Dialog|
|message_photo|Message an image to the user's friends using Message Dialog|
|message_open_graph|Share an Open Graph story to the user's friends using Message Dialog|

####Additional properties of `info` object for each message dialog type:

1. message_link

    |Name|Type|Required|Description|
    |----|----|--------|-----------|
    |link|String|Yes|The link's url|
    |title|String|No|The link's title|
    |imageUrl|String|No|The image for the link|
    |description|String|No|The link's description|

2. message_photo

    |Name|Type|Required|Description|
    |----|----|--------|-----------|
    |photo|String|Yes|The path of the photo|

3. message_open_graph

    |Name|Type|Required|Description|
    |----|----|--------|-----------|
    |action_type|String|Yes|Open Graph Action type|
    |preview_property|String|Yes|Open Graph Object type|
    |others|Various|Yes|Other parameters for the Open Graph story|

##Callback function and response object

The callback function definition is showing below, if the message is sent, the result `code` will be `plugin.FacebookAgent.CODE_SUCCEED`, otherwise, it will indicate the error code with an error message as the `response` parameter.

```javascript
var callback = function (code, response) {}
```

Meanwhile, the response object is only available when the message is sent, examples are showing below for each share dialog type:

1. message_link

    ```javascript
    // The response object 
    {
        // TODO
    }
    ```
    
2. message_photo

    ```javascript
    // The response object 
    {
        // TODO
    }
    ```
    
3. message_open_graph

    ```javascript
    // The response object 
    {
        // TODO
    }
    ```

##Example

1. message_link

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
    
2. message_photo

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
    
3. message_open_graph

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
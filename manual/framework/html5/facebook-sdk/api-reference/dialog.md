#dialog

Share a link, a structured [Open Graph](https://developers.facebook.com/products/open-graph) story, or one or more photos from your app to the user’s timeline and their friends’ newsfeed. 

On iOS or Android, if the user has installed Facebook native app on his/her device, it triggers Share Dialog. Your app does not have to be using Facebook Login for people to be able to share via the Share Dialog. If the user does not have Facebook native app installed on his/her device, it falls back to trigger a web dialog. Please refer to [Sharing in iOS](https://developers.facebook.com/docs/ios/share) and [Sharing in Android](https://developers.facebook.com/docs/android/share) for more details. 

On Web, it can only share a link or a structured Open Graph story and it triggers Share Dialog. Please refer to [Share Dialog](https://developers.facebook.com/docs/sharing/reference/share-dialog) for more details.


##Parameters

```javascript
plugin.FacebookAgent.prototype.dialog = function(info, callback){}
```
|Name|Type|Description|
|----|----|-----------|
|info|Object|The content to be shared. It should have `dialog`, and some other properties. The dialog property determine the type of Facebook dialog you want to trigger.|
|callback|Function|Callback for receiving the result, if result code equals `plugin.FacebookAgent.CODE_SUCCEED`, then the function call is returned successfully, developer can retrieve the result message or json Object from the message.|

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
    if(code == plugin.FacebookAgent.CODE_SUCCEED){
        //success
    }
});
```
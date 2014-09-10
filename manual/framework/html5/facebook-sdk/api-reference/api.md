#request

Makes a call to the [Facebook Graph API](https://developers.facebook.com/docs/reference/api/) to get data, or take action on a user's behalf. This will almost always be used once a user is logged in, and an access token has been granted; the permissions encoded by the access token determine which Graph API calls will be available.

##Parameters

```javascript
plugin.FacebookAgent.prototype.request = function(path, method, params, callback){}
```

|Name|Description|
|----|-----------|
|path|Open Graph API interface path|
|method|HTTP method to send the request. Possible values are `plugin.FacebookAgent.HttpMethod.GET`, `plugin.FacebookAgent.HttpMethod.POST`, `plugin.FacebookAgent.HttpMethod.DELETE`.|
|params|[Optional]The parameter for the request, parameters vary greatly for different interface, please refer to [Graph API Reference](https://developers.facebook.com/docs/graph-api/reference/)|
|callback|Callback for receiving the result, if errorCode equals plugin.FacebookAgent.CODE_SUCCEED, then the function call is returned successfully, developer can retrieve the result json Object|

##Example

```javascript

facebook.request("/me", plugin.FacebookAgent.HttpMethod.Get, function (type, msg) {
    if (type == plugin.FacebookAgent.CODE_SUCCEED) {
        cc.log(msg["id"]);
    } else {
        cc.log(msg["error_message"]);
    }
});

facebook.request("/me/photos", plugin.FacebookAgent.HttpMethod.POST, {"url": "http://files.cocos2d-x.org/images/orgsite/logo.png"}, function (type, msg) {
    if (type == plugin.FacebookAgent.CODE_SUCCEED) {
        cc.log("post_id: " + msg["post_id"]);
    }
});

```
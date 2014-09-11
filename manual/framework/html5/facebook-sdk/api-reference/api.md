#api

Makes a call to the [Facebook Graph API](http://developers.facebook.com/docs/reference/api/) to get data, or take action on a user's behalf. This will almost always be used once a user is logged in, and an access token has been granted; the [permissions](https://developers.facebook.com/docs/facebook-login/permissions/) encoded by the access token determine which Graph API calls will be available.

##Parameters

```javascript
plugin.FacebookAgent.prototype.request = function(path, method, params, callback){}
```

|Name|Description|Default|
|----|-----------|-------|
|path|The Graph API endpoint to call|none|
|method|HTTP method to send the request. Possible values are `plugin.FacebookAgent.HttpMethod.GET`, `plugin.FacebookAgent.HttpMethod.POST`, `plugin.FacebookAgent.HttpMethod.DELETE`.|`plugin.FacebookAgent.HttpMethod.GET`|
|params|The key/value pairs to be passed to the endpoint as arguments. For the details of arguments per endpoint, please refer to [Graph API Reference](http://developers.facebook.com/docs/graph-api/reference/)|none|
|callback|Callback function containing a result code and a JSON response.|none|

##Callback function
```javascript
var callback = function (code, response) {}
```

`code` is `plugin.FacebookAgent.CODE_SUCCEED` or other error code (refer to link here ???), and `response` is a JSON containing the return.

##Example

```javascript
var facebook = plugin.FacebookAgent.getInstance();

facebook.api("/me", plugin.FacebookAgent.HttpMethod.GET, function (code, response) {
    if (code == plugin.FacebookAgent.CODE_SUCCEED) {
        cc.log(response["id"]);
    } else {
        cc.log(response["error_message"]);
    }
});

facebook.api("/me/photos", plugin.FacebookAgent.HttpMethod.POST, {"url": "http://files.cocos2d-x.org/images/orgsite/logo.png"}, function (code, response) {
    if (code == plugin.FacebookAgent.CODE_SUCCEED) {
        cc.log("post_id: " + response["post_id"]);
    } else {
        cc.log(response["error_message"]);
    }
});

```

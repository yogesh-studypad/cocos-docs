#.api(path, method, params, callback)

Makes a call to the [Facebook Graph API](https://developers.facebook.com/docs/reference/api/) find out about the user, or take action on the user's behalf. This will almost always be used once a user is logged in and an access token has been granted. The permissions encoded by the access token determine which Graph API calls will be available.

##Parameters

```javascript
plugin.FacebookAgent.prototype.request = function(path, method, params, callback){}
```

|Name|Type|Required|Description|
|----|----|--------|-----------|
|path|String|Yes|Open Graph API interface path|
|method|String|Yes|HTTP method to send the request. Possible values are `plugin.FacebookAgent.HttpMethod.GET`, `plugin.FacebookAgent.HttpMethod.POST`, `plugin.FacebookAgent.HttpMethod.DELETE`.|
|params|Object|No|The parameter for the request, parameters vary greatly for different interface, please refer to [Graph API Reference](https://developers.facebook.com/docs/graph-api/reference/)|
|callback|Function|No|This callback will be invoked with a result code and a response object or an error message.|

##Callback function and response object

The callback function definition is showing below, if the Graph API request gets a response, the result `code` will be `plugin.FacebookAgent.CODE_SUCCEED`, otherwise, it will indicate the error code with an error message as the `response` parameter.

```javascript
var callback = function (code, response) {}
```

Meanwhile, the response object is only available when a response is returned, here is an example:

```javascript
// The response object 
{
    // TODO
}
```

##Example

```javascript
// Retrieve user's id
facebook.request("/me", plugin.FacebookAgent.HttpMethod.GET, function (type, response) {
    if (type == plugin.FacebookAgent.CODE_SUCCEED) {
        cc.log(response["id"]);
    } else {
        cc.log("Graph API request failed, error #" + code + ": " + response);
    }
});

// Send a photo to user's photo album
facebook.request("/me/photos", plugin.FacebookAgent.HttpMethod.POST, {"url": "http://files.cocos2d-x.org/images/orgsite/logo.png"}, function (type, response) {
    if (type == plugin.FacebookAgent.CODE_SUCCEED) {
        cc.log("post_id: " + response["post_id"]);
    } else {
        cc.log("Graph API request failed, error #" + code + ": " + response);
    }
});
```
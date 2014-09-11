#.login(permissions, callback)

Prompts the user to authorize your application or to grant additional authorizations using the [Login Dialog](https://developers.facebook.com/docs/facebook-login/) appropriate to the platform.

##Parameters

```javascript
plugin.FacebookAgent.prototype.login = function(permissions, callback){}
```

|Name|Type|Required|Description|
|----|----|--------|-----------|
|permissions|Array|No|A list of Facebook permissions to acquire from the user.|
|callback|Function|No|The callback will be invoked with a result code and a response object or an error message.|

##Callback function and response object

The callback function definition is showing below, if login succeed, the result `code` will be `plugin.FacebookAgent.CODE_SUCCEED`, otherwise, it will indicate the error code with an error message as the `response` parameter.

```javascript
var callback = function (code, response) {}
```

Meanwhile, the response object is only available when user succeed to login, here is an example:

```javascript
// The response object 
{
    // The access token
    "accessToken" : "",
    // The permissions
    "permissions" : [
        "publish_actions",
        "photos"
    ]
}
```

##Examples

```javascript
// Assuming that facebook is the instance of FacebookAgent
facebook.login(["create_event", "create_note", "manage_pages", "publish_actions"], function(code, response){
    if(code == plugin.FacebookAgent.CODE_SUCCEED){
        cc.log("login succeed");
        cc.log("AccessToken: " + response["accessToken"]);
        var permissions = response["permissions"];
        var str = "Permissions: ";
        for (var i = 0; i < permissions.length; ++i) {
            str += permissions[i] + " ";
        }
        cc.log("Permissions: " + str);
    } else {
        cc.log("Login failed, error #" + code + ": " + response);
    }
});
```
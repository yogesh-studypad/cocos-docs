#.login(permissions, callback)

Prompts the user to authorize your application using the [Login Dialog](http://developers.facebook.com/docs/facebook-login/) appropriate to the platform. If the user is already logged in and has authorized your application, checks whether all [permissions](http://developers.facebook.com/docs/reference/login/#permissions) in the `permissions` parameter have been granted, and if not, prompts the user for any that are newly requested. Usually, you'll call it once to ask the user for authentication, then again to request additional permissions as required.

##Parameters

```javascript
plugin.FacebookAgent.prototype.login = function(permissions, callback){}
```

|Name|Type|Required|Description|
|----|----|--------|-----------|
|permissions|Array of strings|No|A list of Facebook permissions to request from the user.|
|callback|Function|No|Callback function containing a result code and a JSON response.|

##Callback function and response object

The callback function definition is showing below, if the app request sent successfully, the result `code` will be `plugin.FacebookAgent.CODE_SUCCEED` and `response` will contain access token and permissions granted; otherwise, it will indicate the error code with an error message as the `response` parameter.

```javascript
var callback = function (code, response) {}
```

When login succeeded, here is the example of the `response` object:

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
var facebook = plugin.FacebookAgent.getInstance();
facebook.login(["create_event", "create_note", "manage_pages", "publish_actions"], function(code, response){
    if(code == plugin.FacebookAgent.CODE_SUCCEED){
        cc.log("login succeeded");
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

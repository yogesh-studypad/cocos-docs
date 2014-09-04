#login

Prompts the user to authorize your application or to grant additional authorization using the [Login Dialog](https://developers.facebook.com/docs/facebook-login/) appropriate to the platform.

##Parameters

```javascript
plugin.FacebookAgent.prototype.login = function(permissions, callback){}
```

|Name|Type|Description|
|----|----|-----------|
|permissions|Array|[Optional] A list of Facebook permissions requested from the user.|
|callback|Function|This callback will be passed a result code and a response object. If login succeed, the result code will be `plugin.FacebookAgent.CODE_SUCCEED`, and the response object contains the access token and permissions.|

##Examples

```javascript
//assume facebook is the instance of FacebookAgent
facebook.login(["create_event", "create_note", "manage_pages", "publish_actions"], function(code, response){
    if(code == plugin.FacebookAgent.CODE_SUCCEED){
        cc.log("login succeed");
        cc.log("AccessToken: " + response["accessToken"]);
        cc.log("permissions: " + response["permissions"]);
    }else{
        cc.log("login failed");
    }
});
```
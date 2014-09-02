#login

Prompts the user to authorize your application using the [Login Dialog](https://developers.facebook.com/docs/facebook-login/) appropriate to the platform.

##Parameters

```javascript
plugin.FacebookAgent.prototype.login = function(callback){}
```

|Name|Type|Description|
|----|----|-----------|
|callback|Function|This callback will be passed a result code and a response object. If login succeed, the result code will be `plugin.FacebookAgent.CodeSucceed`, and the response object contains the access token.|

##Examples

```javascript
//assume facebook is the instance of FacebookAgent
facebook.login(function(code, response){
    if(code == plugin.FacebookAgent.CodeSucceed){
        cc.log("login succeed");
        cc.log("AccessToken: " + response["accessToken"])
    }else{
        cc.log("login failed");
    }
});
```
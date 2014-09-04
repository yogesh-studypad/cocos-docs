#requestAccessToken

Get the access token granted to your application by current user.

##Parameters

```javascript
plugin.FacebookAgent.prototype.requestAccessToken = function(callback){}
```

|Name|Type|Description|
|----|----|-----------|
|callback|Function|This callback will be passed a result code and a response object. If request succeed, the result code will be `plugin.FacebookAgent.CodeSucceed`, and the response object contains the access token.|

##Example

```javascript
//assume facebook is the instance of FacebookAgent
facebook.requestAccessToken(function(code, response){
    if(code == plugin.FacebookAgent.CodeSucceed){
        cc.log("AccessToken: " + response["accessToken"]);
    }
});
```
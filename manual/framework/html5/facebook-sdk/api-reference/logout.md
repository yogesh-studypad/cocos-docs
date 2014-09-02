#logout

Log the user out of Facebook. Will also invalidate any access token that you have for the user that was issued before the logout.

##Parameters

```javascript
plugin.FacebookAgent.prototype.logout = function(callback){}
```

|Name|Type|Description|
|----|----|-----------|
|callback|Function|This callback will be passed a result code, and a response object. If logout succeed, the result code will be `plugin.FacebookAgent.CodeSucceed`.|

##Example

```javascript
//assume facebook is the instance of FacebookAgent
facebook.logout(function(code, response){
    if(code == plugin.FacebookAgent.CodeSucceed){ //logout succeed
        cc.log("logout succeed");
    }
});
```
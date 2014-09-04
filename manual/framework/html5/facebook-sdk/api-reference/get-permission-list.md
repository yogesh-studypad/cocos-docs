#getPermissionList

Get permissions of current AccessToken.

##Parameters

```javascript
plugin.FacebookAgent.prototype.getPermissionList = function(callback){}
```

|Name|Type|Description|
|----|----|-----------|
|callback|Function|This callback will be passed a result code and a response object. If succeed, the result code will be `plugin.FacebookAgent.CodeSucceed`, and the response object contains the permissions.|

##Example

```javascript
//assume facebook is the instance of FacebookAgent
facebook.getPermissionList(function(code, response){
    if(code == plugin.FacebookAgent.CodeSucceed){
        cc.log("permissions : " + response["permissions"])
    }
});
```
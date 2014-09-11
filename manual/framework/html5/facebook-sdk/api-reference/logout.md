#.logout(callback)

Log the user out of Facebook. This action will also invalidate any access token that you have for the user that was issued before the logout.

##Parameters

```javascript
plugin.FacebookAgent.prototype.logout = function(callback){}
```

|Name|Type|Required|Description|
|----|----|--------|-----------|
|callback|Function|No|This callback will be invoked with a result code or an error message.|

##Callback function

The callback function definition is showing below, if the user is successfully logged out from Facebook, the result `code` will be `plugin.FacebookAgent.CODE_SUCCEED`, otherwise, it will indicate the error code with an error message as the `response` parameter.

```javascript
var callback = function (code, response) {}
```

##Example

```javascript
// Assuming that facebook is the instance of FacebookAgent
facebook.logout(function(code){
    if(code == plugin.FacebookAgent.CODE_SUCCEED){ //logout succeed
        cc.log("logout succeed");
    } else {
        cc.log("Logout failed, error #" + code + ": " + response);
    }
});
```
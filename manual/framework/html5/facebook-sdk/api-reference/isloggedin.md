#isLoggedIn

Check whether a user is currently logged in and has authorized your app.

##Parameters

```javascript
plugin.FacebookAgent.prototype.isLoggedIn = function(callback){}
```

|Name|Type|Description|
|----|----|-----------|
|callback|Function|The callback will be passed a result code and a response object. Result code will be `plugin.FacebookAgent.CodeSucceed` if check succeed, and response object will has a boolean type property `isLoggedIn`.|

##Example

```javascript
//assume facebook is the instance of FacebookAgent
facebook.isLoggedIn(function(code, response){
    if(code == plugin.FacebookAgent.CodeSucceed){
        cc.log("isLoggedIn : " + response["isLoggedIn"])
    }
});
```
#isLoggedIn

Check whether user have been logged in to Facebook.

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
#.isLoggedIn(callback)

Check whether a user is currently logged in and has authorized your app.

##Parameters

```javascript
plugin.FacebookAgent.prototype.isLoggedIn = function(callback){}
```

|Name|Type|Required|Description|
|----|----|--------|-----------|
|callback|Function|No|The callback will be invoked with a error code and the result or an error message.|

##Callback function and response object

The callback function definition is showing below, if the result received from Facebook, the result `code` will be `plugin.FacebookAgent.CODE_SUCCEED`, otherwise, it will indicate the error code with an error message as the `response` parameter.

```javascript
var callback = function (code, response) {}
```

Meanwhile, the response object is only available when result received, here is an example:

```javascript
// The response object 
{
    // Indicate whether user is currently logged in
    "isLoggedIn" : true
}
```

##Example

```javascript
// Assuming that facebook is the instance of FacebookAgent
facebook.isLoggedIn(function(code, response){
    if(code == plugin.FacebookAgent.CODE_SUCCEED){
        cc.log("isLoggedIn : " + response["isLoggedIn"])
    } else {
        cc.log("Check failed, error #" + code + ": " + response);
    }
});
```
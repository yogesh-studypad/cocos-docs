#.requestAccessToken(callback)

Get the access token granted to your application by current user.

##Parameters

```javascript
plugin.FacebookAgent.prototype.requestAccessToken = function(callback){}
```

|Name|Type|Required|Description|
|----|----|--------|-----------|
|callback|Function|No|This callback will be invoked with a result code and a response object or an error message.|

##Callback function and response object

The callback function definition is showing below, if the request succeed, the result `code` will be `plugin.FacebookAgent.CODE_SUCCEED`, otherwise, it will indicate the error code with an error message as the `response` parameter.

```javascript
var callback = function (code, response) {}
```

Meanwhile, the response object is only available when the request succeed, here is an example:

```javascript
// The response object 
{
    // The access token for the current user
    "accessToken" : ""
}
```

##Example

```javascript
// Assuming that facebook is the instance of FacebookAgent
facebook.requestAccessToken(function(code, response){
    if(code == plugin.FacebookAgent.CODE_SUCCEED){
        cc.log("AccessToken: " + response["accessToken"]);
    } else {
        cc.log("Failed to retrieve the access token, error #" + code + ": " + response);
    }
});
```
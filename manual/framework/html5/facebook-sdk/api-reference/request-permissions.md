#requestPermissions

Ask user for Facebook permissions, you must have the correspondent permissions to invoke the Open Graph APIs.

##Parameters

```javascript
plugin.FacebookAgent.prototype.requestPermissios = function(callback){}
```

|Name|Type|Description|
|----|----|-----------|
|calback|Function|This callback will be passed a result code and a response object. If request succeed, the result code will be `plugin.FacebookAgent.CodeSucceed`, and the response object contains current permissions.|

##Example

```javascript
facebook.requestPermissions(permissions, function (code, response) {
    if (type == plugin.FacebookAgent.CodeSucceed) {
        cc.log(response["permissions"]);
    }
});
```
#appRequest

Prompts the user to send [app requests](https://developers.facebook.com/docs/reference/dialogs/requests/), short messages between users. Please see the documentation for details.

##Parameters

```javascript
plugin.FacebookAgent.prototype.appRequest = function(info, callback){}
```

|Name|Type|Description|
|----|----|-----------|
|info|Object|The content to be send. Should contain `message`, `link` properties.|
|callback|Function|Callback for receiving the result, if result code equals `plugin.FacebookAgent.CODE_SUCCEED`, then the function call is returned successfully, developer can retrieve the result message or json Object from the message.|

##Example

```javascript
var info = {
    "message": "Cocos2d-x is a great game engine",
    "link": "http://www.cocos2d-x.org"
};
facebook.appRequest(info, function (code, msg) {
    if(code == plugin.FacebookAgent.CODE_SUCCEED){
        //succeed
    }
});
```
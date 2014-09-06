#.appRequest(info, callback)

Prompts the user to send [App Requests](https://developers.facebook.com/docs/reference/dialogs/requests/) with customized messages to his/her friends. On all platforms it triggers Requests Dialog to let user complete the send action.

##Parameters

```javascript
plugin.FacebookAgent.prototype.appRequest = function(info, callback){}
```

|Name|Type|Required|Description|
|----|----|--------|-----------|
|info|Object|Yes|The app request content to be send.|
|callback|Function|No|This callback will be invoked with a result code and a response object or an error message.|

####`info` content:

|Name|Type|Required|Description|
|----|----|--------|-----------|
|title|String|Yes|The app request message title|
|message|String|Yes|The app request message content|

##Callback function and response object

The callback function definition is showing below, if the app request sent successfully, the result `code` will be `plugin.FacebookAgent.CODE_SUCCEED`, otherwise, it will indicate the error code with an error message as the `response` parameter.

```javascript
var callback = function (code, response) {}
```

Meanwhile, the response object is only available when the app request sent successfully, here is an example:

```javascript
// The response object 
{
    // TODO
}
```

##Example

```javascript
var info = {
    "message": "Cocos2d-JS is a great game engine",
    "title": "Cocos2d-JS"
};
facebook.appRequest(info, function (code, msg) {
    if(code == plugin.FacebookAgent.CODE_SUCCEED){
        //succeed
    } else {
        cc.log("Request send failed, error #" + code + ": " + response);
    }
});
```
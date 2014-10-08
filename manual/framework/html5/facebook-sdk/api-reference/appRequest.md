#.appRequest(info, callback)

This method triggers Requests Dialog, which is invoked in-game via the Facebook SDK on iOS, Android and Canvas. Requests can contain a user-facing message as plain text, which is passed as a parameter when invoking the dialog, or they can contain specific information including in-game items and explicit calls to action. Requests give players a mechanism for inviting their friends to play a game. Requests are sent by a player to one or more specific friends, and always carry a call-to-action that the sender wants the recipient to complete. Recipients can choose to accept the request, or they can choose to ignore or decline it.

For more details, please refer to doc [Requests](http://developers.facebook.com/docs/reference/dialogs/requests/).
NOTE: Request Dialog in Cocos SDK does not support [Frictionless Requests](http://developers.facebook.com/docs/games/requests/#frictionless-requests) for now. 

##Parameters

```javascript
plugin.FacebookAgent.prototype.appRequest = function(info, callback){}
```

|Name|Type|Required|Description|
|----|----|--------|-----------|
|info|Object|Yes|The object to contain the details of the request.|
|callback|Function|No|Callback function containing a result code and a JSON response.|

####`info` content:

It supports all the parameters listed in [Dialog Parameters Section](http://developers.facebook.com/docs/games/requests/#params) in the doc.

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
var facebook = plugin.FacebookAgent.getInstance();
facebook.appRequest(info, function (code, msg) {
    if(code == plugin.FacebookAgent.CODE_SUCCEED){
        //succeed
    } else {
        cc.log("Request send failed, error #" + code + ": " + response);
    }
});
```

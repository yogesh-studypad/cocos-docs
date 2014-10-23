#.login(permissions, callback)

提示用户使用[Login Dialog](http://developers.facebook.com/docs/facebook-login/)将你的应用授权到合适的平台。如果用户已经登录或者已经授权你的应用，它就会检查是否所有的权限[permissions](http://developers.facebook.com/docs/reference/login/#permissions)在`permissions`里都被允许，如果不是，将提示用户加入新的必要权限。通常来讲，仅要求用户授权一次，然后只需要求加入额外必须权限。

##参数

```javascript
plugin.FacebookAgent.prototype.login = function(permissions, callback){}
```

|名称|类型|是否必须|描述|
|----|----|--------|-----------|
|permissions|字符串数组|否|一组来自用户请求的Facebook权限。|
|callback|函数|否|包含结果码和JSON响应的回调函数。|

###回调函数

```javascript
var callback = function (code, response) {}
```

如果成功登录, `code` 属性为 `plugin.FacebookAgent.CODE_SUCCEED`，并且 `response` 包含访问令牌和已授权限；否则, `code`就是错误码，同时`response`是一条包含错误信息的JSON。

当登录成功，这里是`response`属性的一个例子：

```javascript
// The response object 
{
    // The access token
    "accessToken" : "",
    // The permissions
    "permissions" : [
        "publish_actions",
        "photos"
    ]
}
```

##范例

```javascript
var facebook = plugin.FacebookAgent.getInstance();
facebook.login(["create_event", "create_note", "manage_pages", "publish_actions"], function(code, response){
    if(code == plugin.FacebookAgent.CODE_SUCCEED){
        cc.log("login succeeded");
        cc.log("AccessToken: " + response["accessToken"]);
        var permissions = response["permissions"];
        var str = "Permissions: ";
        for (var i = 0; i < permissions.length; ++i) {
            str += permissions[i] + " ";
        }
        cc.log("Permissions: " + str);
    } else {
        cc.log("Login failed, error #" + code + ": " + response);
    }
});
```

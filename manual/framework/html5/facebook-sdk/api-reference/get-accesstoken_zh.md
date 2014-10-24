#.getAccessToken()

返回用户最近授权给应用的[access token](http://developers.facebook.com/docs/facebook-login/access-tokens/)，否则返回一个空字符串。

##范例

```javascript
var facebook = plugin.FacebookAgent.getInstance();
var token = facebook.getAccessToken();
    if (token){
        cc.log("AccessToken: " + token);
    } else {
        cc.log("No valid access token from the current user");
    }
});
```

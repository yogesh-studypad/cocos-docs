#.logout()

Log the user out of both your site and Facebook. Will also invalidate any access token that you have for the user that was issued before the logout.

##Example

```javascript
var facebook = plugin.FacebookAgent.getInstance();
facebook.logout();
```

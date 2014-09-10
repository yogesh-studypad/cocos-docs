#getInstance

FacebookAgent is a singleton class which encapsulated all APIs of Facebook SDK Beta for Cocos2d-JS, if you want to use it, you need to retrieve its instance firstly.

##Example

```javascript
var facebook = plugin.FacebookAgent.getInstance();
//do something, e.g. facebook.publishInstall();
```
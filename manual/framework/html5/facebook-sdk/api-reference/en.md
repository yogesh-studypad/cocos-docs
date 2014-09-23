#Facebook SDK Beta for Cocos2d-JS API Reference

##Getting start

Before using Facebook SDK Beta, you may need to integrate Facebook SDK Beta for Cocos2d-JS in your project. Firstly, please use Cocos Console to create a new project, then follow these documents for the integration:

- [Cocos Console usage document](http://www.cocos2d-x.org/docs/manual/framework/html5/v2/cocos-console/en)
- [Integrate the Facebook SDK Beta for Cocos2d-JS on Android](../facebook-sdk-on-android/en.md)
- [Integrate the Facebook SDK Beta for Cocos2d-JS on iOS](../facebook-sdk-on-ios/en.md)
- [Integrate the Facebook SDK Beta for Cocos2d-JS on Web](../facebook-sdk-on-web/en.md)

##API list

###FacebookAgent class

`plugin.FacebookAgent` is a singleton class that encapsulates the methods of Facebook SDK Beta for Cocos2d-JS. Before doing anything else, you need to initialize the instance first.

###Core Methods

|Name|Description|
|----|-----------|
|[getInstance](./get-instance.md)|Initialize the SDK, and return the instance of `plugin.FacebookAgent`. Required before doing anything else.|
|[destroyInstance](./destroy-instance.md)|Destroy the instance of `plugin.FacebookAgent`.|
|[api](./api.md)|Call the [Facebook Graph API](http://developers.facebook.com/docs/graph-api) to find out about the user or act on his/her behalf.|
|[shareDialog](./dialog-share.md)|Trigger the share dialog for one-to-many sharing on Facebook. |
|[canPresentShareDialog](./dialog-can-share.md)|Check whether it can trigger the share dialog for one-to-many sharing on Facebook. |
|[messageDialog](./dialog-message.md)|Trigger the message dialog for sending messages to friends.|
|[canPresentMessageDialog](./dialog-can-message.md)|Check whether it can trigger the message dialog for sending messages to friends.|
|[feedDialog](./dialog-feed.md)|Trigger the web feed dialog for one-to-many sharing on Facebook. |
|[appRequest](./appRequest.md)|Trigger the [Request](http://developers.facebook.com/docs/reference/dialogs/requests/) dialog for one-to-one sharing.|

###Auth and Session Methods

|Name|Description|
|----|-----------|
|[login](./login.md)|Ask a user to authorize your app, or to grant additional authorizations.|
|[logout](./logout.md)|Log a user entirely out of Facebook.|
|[isLoggedIn](./isloggedin.md)|Check whether a user is currently logged in and has authorized your app.|
|[getUserId](./get-userid.md)|Get the Facebook user ID of the currently logged in user.|
|[getAccessToken](./request-accesstoken.md)|Get the access token granted to your application by current user.|
|[getPermissionList](./get-permission-list.md)|Get the permissions granted to your application by current user.|

###Auxiliary Methods

|Name|Description|
|----|-----------|
|[pay](./pay.md)|Prompt the user to make a payment using [Facebook Payments](http://developers.facebook.com/docs/concepts/payments/). _Desktop only_.|
|[activateApp](./publish-install.md)|Report the launch of the app, for integration with Facebook app ads. More details at [App Events](http://developers.facebook.com/docs/platforminsights/appevents). |
|[logEvent](./log-event.md)|Report an app event, for integration with Facebook app ads. More details at [App Events](http://developers.facebook.com/docs/platforminsights/appevents). |
|[logPurchase](./log-purchase.md)|Report a purchase event, for integration with Facebook app ads. More details at [App Events](http://developers.facebook.com/docs/platforminsights/appevents). |

##Facebook SDK Beta Features

|Methods|iOS|Android|Web|
|:-:|:-:|:-----:|:-:|
|api|√|√|√|
|shareDialog - link|√|√|√|
|shareDialog - open_graph|√|√|√|
|shareDialog - photo|√|√|×|
|messageDialog - link|√|√|√|
|messageDialog - open_graph|√|√|×|
|messageDialog - photo|√|√|×|
|feedDialog|√|√|√|
|appRequest|√|√|√|
|login|√|√|√|
|logout|√|√|√|
|isLoggedIn|√|√|√|
|getUserId|√|√|√|
|getAccessToken|√|√|√|
|getPermissionList|√|√|√|
|pay|×|×|√|
|activateApp|√|√|√|
|logEvent|√|√|√|

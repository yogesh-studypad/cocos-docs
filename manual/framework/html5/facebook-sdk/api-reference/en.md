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
|[share](./share.md)|Post a status update on Facebook.|
|[dialog](./dialog.md)|Trigger the dialog for one-to-many sharing on Facebook or trigger the dialog for sending message to friends.|
|[appRequest](./appRequest.md)|Trigger the [Request](http://developers.facebook.com/docs/reference/dialogs/requests/) dialog for one-to-one sharing.|

###Auth and Session Methods

|Name|Description|
|----|-----------|
|[login](./login.md)|Ask a user to authorize your app, or to grant additional authorization.|
|[logout](./logout.md)|Log a user entirely out of Facebook.|
|[isLoggedIn](./isloggedin.md)|Check whether a user is currently logged in and has authorized your app.|
|[getAccessToken](./request-accesstoken.md)|Get the access token granted to your application by current user.|
|[getPermissions](./get-permission-list.md)|Get the list of permissions that the current user granted to your application.|
|[getUserId](./request-accesstoken.md)|Get the Facebook user ID of the currently logged in user.|



###Auxiliary Methods

|Name|Description|
|----|-----------|
|[pay](./pay.md)|Prompt the user to make a payment using [Facebook Payments](http://developers.facebook.com/docs/concepts/payments/). _Desktop only_.|
|[activateApp](./publish-install.md)|Report an install, for integration with [Mobile Install Ads](http://developers.facebook.com/docs/tutorials/mobile-app-ads/). _Mobile only_.|
|[logEvent](./log-event.md)|Publish an app event, for deeper integration with [Mobile Install Ads](http://developers.facebook.com/docs/tutorials/mobile-app-ads/). _Mobile only_.|

##Facebook SDK Beta Features

|Methods|iOS|Android|Web|
|:-:|:-:|:-----:|:-:|
|api|√|√|√|
|Share|√|√|√|
|dialog - share_link|√|√|√|
|dialog - share_open_graph|√|√|√|
|dialog - share_photo|√|√|×|
|dialog - message_link|√|√|√|
|dialog - message_open_graph|√|√|×|
|dialog - message_photo|√|√|×|
|appRequest|√|√|√|
|login|√|√|√|
|logout|√|√|√|
|isLoggedIn|√|√|√|
|getAccessToken|√|√|√|
|getPermissions|√|√|√|
|getUserId|√|√|√|
|pay|×|×|√|
|activateApp|√|√|×|
|logEvent|√|√|×|

#Facebook SDK Beta for Cocos2d-JS API Reference

##Getting start

Before using Facebook SDK Beta, you may need to integrate Facebook SDK Beta for Cocos2d-JS in your project. Firstly, please use Cocos Console to create a new project, then follow these documents for the integration:

- [Cocos Console usage document](http://www.cocos2d-x.org/docs/manual/framework/html5/v2/cocos-console/en)
- [Integrate the Facebook SDK Beta for Cocos2d-JS on Android](../facebook-sdk-on-android/en.md)
- [Integrate the Facebook SDK Beta for Cocos2d-JS on iOS](../facebook-sdk-on-ios/en.md)
- [Integrate the Facebook SDK Beta for Cocos2d-JS on Web](../facebook-sdk-on-web/en.md)

##API list

###FacebookAgent class
`plugin.FacebookAgent` is a singleton class which encapsulated all APIs of Facebook SDK Beta for Cocos2d-JS, if you want to use it, you need to retrieve its instance firstly.

|Name|Description|
|----|-----------|
|[getInstance](./get-instance.md)|Initialize the SDK, and return the instance of plugin. Required before doing anything else.|
|[destroyInstance](./destroy-instance.md)|Destroy the instance of plugin.|

###Login

|Name|Description|
|----|-----------|
|[login](./login.md)|Ask a user to authorize your app, or to grant additional authorization.|
|[logout](./logout.md)|Log a user entirely out of Facebook.|
|[isLoggedIn](./isloggedin.md)|Check whether a user is currently logged in and has authorized your app.|
|[requestAccessToken](./request-accesstoken.md)|Get the access token granted to your application by current user.|
|[getPermissionList](./get-permission-list.md)|Get permissions of current AccessToken.|

###Sharing

|Name|Description|
|----|-----------|
|[share](./share.md)|Post a status update on Facebook.|
|[dialog](./dialog.md)|Trigger the Facebook Dialog for sharing or sending message.|
|[appRequest](./appRequest.md)|Prompts the user to send [app requests](https://developers.facebook.com/docs/reference/dialogs/requests/), short messages between users.|

###Graph API

|Name|Description|
|----|-----------|
|[api](./api.md)|Call the Facebook Graph API to find out about the user or act on his/her behalf.Please refer to [Facebook Graph API Doc](https://developers.facebook.com/docs/graph-api) for details about Graph API.|

###Payments

|Name|Description|
|----|-----------|
|[pay](./pay.md)|Prompt the user to make a payment using [Facebook Payments](https://developers.facebook.com/docs/concepts/payments/). _Desktop only_.|

###Auxiliary Methods

|Name|Description|
|----|-----------|
|[activateApp](./publish-install.md)|Report an install, for integration with [Mobile Install Ads](https://developers.facebook.com/docs/tutorials/mobile-app-ads/). _Mobile only_.|
|[logEvent](./log-event.md)|Publish an app event, for deeper integration with [Mobile Install Ads](https://developers.facebook.com/docs/tutorials/mobile-app-ads/). _Mobile only_.|

##Facebook SDK Beta Features

|Methods|iOS|Android|Web|
|:-:|:-:|:-----:|:-:|
|Login|√|√|√|
|Logout|√|√|√|
|IsLoggedIn|√|√|√|
|RequestAccessToken|√|√|√|
|GetPermissionList|√|√|√|
|Share|√|√|√|
|dialog - share_link|√|√|√|
|dialog - share_open_graph|√|√|√|
|dialog - share_photo|√|√|×|
|dialog - message_link|√|√|√|
|dialog - message_open_graph|√|√|×|
|dialog - message_photo|√|√|×|
|AppRequest|√|√|√|
|API|√|√|√|
|Pay|×|×|√|
|activateApp|√|√|×|
|LogEvent|√|√|×|

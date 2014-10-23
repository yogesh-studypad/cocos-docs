#Facebook Integration for Cocos2d-JS API Reference

##Getting started

Before using Facebook Integration, you will need to know about Cocos2d-JS project and how to import Facebook Integration for Cocos2d-JS in your project. Firstly, please read the [Cross native / browser game with Cocos Console](http://cocos2d-x.org/docs/manual/framework/cocos2d-js/2-working-environment-and-workflow/2-2-cross-native-browser-game-with-cocos-console/en) document. This will help you have a general idea about Cocos2d-JS architecture and the standard workflow of Cocos2d-JS development.

Then you can follow these integration documents for integrating Facebook in your Cocos2d-JS project:

- [Setup Facebook Integration for Cocos2d-JS on Android](../facebook-sdk-on-android/en.md)
- [Setup Facebook Integration for Cocos2d-JS on iOS](../facebook-sdk-on-ios/en.md)
- [Setup Facebook Integration for Cocos2d-JS on Web](../facebook-sdk-on-web/en.md)

Next you may be interested in checking out the Facebook Integration test case and see all the functionalities in action, please follow [this document](../facebook-test-case/en.md) to know how to run it and what's demonstrated in the test case.

We also invite you to explore other documents about Cocos2d-JS development.

- [The document root](http://cocos2d-x.org/docs/manual/framework/html5/en)

##API list

###FacebookAgent class

`plugin.FacebookAgent` is a singleton class that encapsulates the methods of Facebook Integration for Cocos2d-JS. Before doing anything else, you need to initialize the instance first.

###Core Methods

|Name|Description|
|----|-----------|
|[getInstance](./get-instance.md)|Initialize the SDK, and return the instance of `plugin.FacebookAgent`. Required before doing anything else.|
|[destroyInstance](./destroy-instance.md)|Destroy the instance of `plugin.FacebookAgent`.|
|[api](./api.md)|Call the [Facebook Graph API](http://developers.facebook.com/docs/graph-api) to find out about the user or act on his/her behalf.|
|[dialog](./dialog.md)|Trigger different forms of Facebook created UI dialogs, such as the Share Dialog for one-to-many sharing on Facebook, or the Message Dialog for sending messages to friends. |
|[canPresentDialog](./can-present-dialog.md)|Check whether it can trigger a particular form of Facebook created UI dialog based on the current user's device environment.|
|[appRequest](./app-request.md)|Trigger the [Request](http://developers.facebook.com/docs/reference/dialogs/requests/) dialog to send a request to one or more of friends from a game.|

###Auth and Session Methods

|Name|Description|
|----|-----------|
|[login](./login.md)|Ask a user to authorize your app, or to grant additional authorizations.|
|[logout](./logout.md)|Log a user entirely out of Facebook.|
|[isLoggedIn](./isloggedin.md)|Check whether a user is currently logged in and has authorized your app.|
|[getUserId](./get-userid.md)|Get the Facebook user ID of the currently logged in user.|
|[getAccessToken](./get-accesstoken.md)|Get the access token granted to your application by current user.|

###Auxiliary Methods

|Name|Description|
|----|-----------|
|[canvas.pay](./pay.md)|Prompt the user to make a payment using [Facebook Payments](http://developers.facebook.com/docs/concepts/payments/). _Desktop only_.|
|[activateApp](./activate-app.md)|Report the launch of the app, for integration with Facebook app ads. More details at [App Events](http://developers.facebook.com/docs/platforminsights/appevents). |
|[logEvent](./log-event.md)|Report an app event, for integration with Facebook app ads. More details at [App Events](http://developers.facebook.com/docs/platforminsights/appevents). |
|[logPurchase](./log-purchase.md)|Report a purchase event, for integration with Facebook app ads. More details at [App Events](http://developers.facebook.com/docs/platforminsights/appevents). |

##Facebook Integration Features

|Methods|iOS|Android|Web|
|:-:|:-:|:-----:|:-:|
|api|√|√|√|
|dialog - shareLink|√|√|√|
|dialog - shareOpenGraph|√|√|√|
|dialog - sharePhoto|√|√|×|
|dialog - messageLink|√|√|√|
|dialog - messageOpenGraph|√|√|×|
|dialog - messagePhoto|√|√|×|
|dialog - feedDialog|√|√|√|
|appRequest|√|√|√|
|login|√|√|√|
|logout|√|√|√|
|isLoggedIn|√|√|√|
|getUserId|√|√|√|
|getAccessToken|√|√|√|
|canvas.pay|×|×|√|
|activateApp|√|√|√|
|logEvent|√|√|√|
|logPurchase|√|√|√|



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
|[dialog](./dialog.md)|Trigger different forms of Facebook created UI dialogs, such as the Share Dialog for one-to-many sharing on Facebook, or the Message Dialog for sending messages to friends. |
|[canPresentDialog](./can-present-dialog.md)|Check whether it can trigger a particular form of Facebook created UI dialog based on the current user's device environment.|
|[appRequest](./appRequest.md)|Trigger the [Request](http://developers.facebook.com/docs/reference/dialogs/requests/) dialog to send a request to one or more of friends from a game.|

###Auth and Session Methods

|Name|Description|
|----|-----------|
|[login](./login.md)|Ask a user to authorize your app, or to grant additional authorizations.|
|[logout](./logout.md)|Log a user entirely out of Facebook.|
|[isLoggedIn](./isloggedin.md)|Check whether a user is currently logged in and has authorized your app.|
|[getUserId](./get-userid.md)|Get the Facebook user ID of the currently logged in user.|
|[getAccessToken](./get-accesstoken.md)|Get the access token granted to your application by current user.|

*[colin] In the JS and Unity SDKs, we have user ID and access token as properties, rather than methods (see <https://developers.facebook.com/docs/unity/reference/current/Properties>). Can we harmonize this design with those by making them properties here? I believe that making isLoggedIn a method is defensible, but for consistency, could we consider changing it, too, to a property? Generally speaking, if something isn't a verb (like .logout()), and doesn't take arguments, we prefer to make it a property.*

###Auxiliary Methods

|Name|Description|
|----|-----------|
|[pay](./pay.md)|Prompt the user to make a payment using [Facebook Payments](http://developers.facebook.com/docs/concepts/payments/). _Desktop only_.|
|[activateApp](./activate-app.md)|Report the launch of the app, for integration with Facebook app ads. More details at [App Events](http://developers.facebook.com/docs/platforminsights/appevents). |
|[logEvent](./log-event.md)|Report an app event, for integration with Facebook app ads. More details at [App Events](http://developers.facebook.com/docs/platforminsights/appevents). |
|[logPurchase](./log-purchase.md)|Report a purchase event, for integration with Facebook app ads. More details at [App Events](http://developers.facebook.com/docs/platforminsights/appevents). |

*[colin] .logPurchase(...) is probably a good idea to add to all of the other SDKs, as a convenience method for logEvent(FBAppEventNamePurchased,...). Good design! Do we want to namespace .pay(...) to clarify that it's canvas-only, the way we do in the Unity SDK? <https://developers.facebook.com/docs/unity/reference/current/FB.Canvas.Pay>*

##Facebook SDK Beta Features

|Methods|iOS|Android|Web|
|:-:|:-:|:-----:|:-:|
|api|√|√|√|
|dialog - share_link|√|√|√|
|dialog - share_open_graph|√|√|√|
|dialog - share_photo|√|√|×|
|dialog - message_link|√|√|√|
|dialog - message_open_graph|√|√|×|
|dialog - message_photo|√|√|×|
|dialog - feed_dialog|√|√|×|
|appRequest|√|√|√|
|login|√|√|√|
|logout|√|√|√|
|isLoggedIn|√|√|√|
|getUserId|√|√|√|
|getAccessToken|√|√|√|
|pay|×|×|√|
|activateApp|√|√|√|
|logEvent|√|√|√|
|logPurchase|√|√|√|

*[colin] Nits: Is there a reason that appRequest isn't listed as a dialog? Guessing that's just an oversight. Also, assuming that all the underscore_delimited names will become camelCased (unless this is the convention throughout Cocos).*

*[colin] Is the design for the dialogs that there will be a single .dialog method, similar to the JS SDK's .ui(...) function, which takes a dialog name as one of its arguments? I recommend against that, as giving each dialog's invoking method a distinct signature will make it easier to catch errors at compile time, and is also more consistent with the existence of the .pay(...) method. We did this better when we designed the Unity SDK.*

*[colin] If you want to have a Canvas::UI(...) method to wrap the .ui(...) function, for future-proofing, that's fine too. But make the specialized methods the preferred way to call the dialogs we know about.*

*[colin] I would also try to combine share_link, share_open_graph, and share_photo into one function, if practical. Their separation is platform-specific, and our architecture should aim to hide per-platform details.*

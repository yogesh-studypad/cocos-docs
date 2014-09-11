#.logEvent(eventName, valueToSum, parameters)

Publishes an [App Event](https://developers.facebook.com/docs/ios/app-events/).

App events allow you to measure the effectiveness of your Facebook mobile app ads and and better understand the makeup of users engaging with your app. This event can be one of 14 predefined events such as 'added to cart' in a commerce app or 'level achieved' in a game, or other custom events that help you understand the engagement and ROI coming from your mobile ads on Facebook. How often these events occur is reported in aggregate through Facebook's [insights tool](https://developers.facebook.com/docs/insights/).

##Parameters

```javascript
plugin.FacebookAgent.prototype.logEvent = function(eventName, valueToSum, parameters){}
```

|Name|Type|Required|Description|
|----|----|--------|-----------|
|eventName|Enum|Yes|EventName used to denote the event.|
|valueToSum|Number|No|A value to associate with the event which will be summed up in Insights for across all instances of the event, so that average values can be determined, etc.|
|parameters||No|A Bundle of parameters to log with the event.|

Predefined events in `plugin.FacebookAgent.AppEvent`:

|Name|When to log|
|----|-----------|
|ACTIVATED_APP|An app is being activated, typically in the AppDelegate's applicationDidBecomeActive.|
|COMPLETED_REGISTRATION|A user has completed registration with the app.|
|VIEWED_CONTENT|A user has viewed a form of content in the app.|
|SEARCHED|A user has performed a search within the app.|
|RATED|The user has rated an item in the app. The valueToSum passed to logEvent should be the numeric rating.|
|COMPLETED_TUTORIAL|The user has completed a tutorial in the app.|
|ADDED_TO_CART|The user has added an item to their cart. The valueToSum passed to logEvent should be the item's price.|
|ADDED_TO_WISHLIST|The user has added an item to their wishlist. The valueToSum passed to logEvent should be the item's price.|
|INITIATED_CHECKOUT|The user has entered the checkout process. The valueToSum passed to logEvent should be the total price in the cart.|
|ADDED_PAYMENT_INFO|The user has entered their payment info.|
|PURCHASED|The user has completed a purchase.|
|ACHIEVED_LEVEL|The user has achieved a level in the app.|
|UNLOCKED_ACHIEVEMENT|The user has unlocked an achievement in the app.|
|SPENT_CREDITS|The user has spent app credits. The valueToSum passed to logEvent should be the number of credits spent.|

Predefined parameter names in `plugin.FacebookAgent.AppEventParam`:

|Name|User to specify...|
|----|------------------|
|CURRENCY|[ISO-4217 3-letter code](http://en.wikipedia.org/wiki/ISO_4217) for currency used (e.g. "USD", "EUR", "GBP").|
|REGISTRATION_METHOD|Method user has used to register for the app, e.g., "Facebook", "email", "Twitter", etc|
|CONTENT_TYPE|A generic content type/family for the logged event, e.g. "music", "photo", "video". Options to use will vary based upon what the app is all about.|
|CONTENT_ID|An ID for the specific piece of content being logged about. Could be an EAN, article identifier, etc., depending on the nature of the app.|
|SEARCH_STRING|The string provided by the user for a search operation.|
|SUCCESS|Whether the activity being logged about was successful or not.|
|MAX_RATING_VALUE|The maximum rating available for the `plugin.FacebookAgent.AppEvent.RATED` event. E.g., "5" or "10".|
|PAYMENT_INFO_AVAILABLE|Whether payment info is available for the `plugin.FacebookAgent.AppEvent.INITIATED_CHECKOUT` event. |
|NUM_ITEMS|How many items are being processed for an `plugin.FacebookAgent.AppEvent.INITIATED_CHECKOUT` or `plugin.FacebookAgent.AppEvent.PURCHASED` event.|
|DESCRIPTION|A description appropriate to the event being logged. E.g., the name of the achievement unlocked in the `plugin.FacebookAgent.AppEvent.UNLOCKED_ACHIEVEMENT` event.|

Predefined parameter values in `plugin.FacebookAgent.AppEventParamValue`:

|Name|Value|
|----|-----|
|VALUE_YES|1|
|VALUE_NO|0|

##Example

```javascript
var parameters = {};
var floatVal = 888.888;
parameters[plugin.FacebookAgent.AppEventParam.SUCCESS] = plugin.FacebookAgent.AppEventParamValue.VALUE_YES;
facebook.logEvent(plugin.FacebookAgent.AppEvent.COMPLETED_TUTORIAL);
facebook.logEvent(plugin.FacebookAgent.AppEvent.COMPLETED_TUTORIAL, floatVal);
facebook.logEvent(plugin.FacebookAgent.AppEvent.COMPLETED_TUTORIAL, parameters);
facebook.logEvent(plugin.FacebookAgent.AppEvent.COMPLETED_TUTORIAL, floatVal, parameters);
```
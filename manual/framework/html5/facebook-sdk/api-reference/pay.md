#pay
Send a payment request, more details about Payments API can be found in the [Facebook Official Payments Document](https://developers.facebook.com/docs/payments/local-currency-payments-guide)

##Parameters

```javascript
plugin.FacebookAgent.prototype.pay = function(params, callback){}
```

|Name|Description|
|----|-----------|
|params|The parameters as mentioned in Facebook Payments doc. |
|callback|Callback for receiving the result, if errorCode equals plugin.FacebookAgent.CodeSucceed, then the function call is returned successfully, developer can retrieve the result message or json string from the message|

params contents:

|Name|Description|
|----|-----------|
|product|The URL of your og:product object that the user is looking to purchase. |
|quantity|[Optional]The amount of this item that user is looking to purchase.|
|quantity_min|[Optional]The minimum quantity of the item that user is able to purchase.|
|quantity_max|[Optional]The maximum quantity of the item that user is able to purchase.|
|request_id|[Optional]The developer defined unique identifier for this transaction.|
|pricepoint_id|[Optional]Used to shortcut a mobile payer directly to the mobile purchase flow at a given price point.|
|test_currency|[Optional]This parameter can be used during debugging and testing your implementation to force the dialog to use a specific currency rather than the current user's preferred currency.|

##Example

```javascript
facebook.pay({
        product: 'https://www.cocos2d-x.org/demo/facebooktest/pay/item1.html'
    }, function(code, response){
    if(code == plugin.FacebookAgent.CodeSucceed && response['status'] === 'completed'){
        cc.log("Success: " + response['amount'] + response['currency']);
    }else{
        cc.log("Abnormal: " + response['status']);
    }
});
```
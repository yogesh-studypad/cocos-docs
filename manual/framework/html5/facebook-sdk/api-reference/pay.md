#.pay(product, callback)

Prompt the user to make a payment using [Facebook Payments](http://developers.facebook.com/docs/payments/). This wraps the JS SDK function FB.ui({method: "pay", action: "purchaseitem", ...), which you can find more details at [Pay Dialog](http://developers.facebook.com/docs/payments/reference/paydialog).

##Parameters

```javascript
plugin.FacebookAgent.prototype.pay = function(product, callback){}
```

|Name|Type|Required|Description|
|----|----|--------|-----------|
|product|URL|Yes||
|callback|Function|No|This callback will be invoked with a result code and a response object or an error message.|

####`product` contents:

|Name|Type|Required|Description|
|----|----|--------|-----------|
|product|URL|Yes|The URL of your og:product object that the user is looking to purchase. For a full description on how to construct this product object, please see the [How-to: Local Currency Payments - Defining Products](http://developers.facebook.com/docs/howtos/payments/definingproducts/) guide, and the [Product Object](http://developers.facebook.com/docs/payments/product/) reference material.|
|quantity|Number|No|The amount of this item that user is looking to purchase.|
|quantity_min|Number|No|The minimum quantity of the item that user is able to purchase.|
|quantity_max|Number|No|The maximum quantity of the item that user is able to purchase.|
|request_id|String|No|The developer defined unique identifier for this transaction.|
|pricepoint_id|String|No|Used to shortcut a mobile payer directly to the mobile purchase flow at a given price point.|
|test_currency|String|No|This parameter can be used during debugging and testing your implementation to force the dialog to use a specific currency rather than the current user's preferred currency.|

##Callback function and response object

The callback function definition is showing below, if the payment gets a response, the result `code` will be `plugin.FacebookAgent.CODE_SUCCEED`, otherwise, it will indicate the error code with an error message as the `response` parameter.

```javascript
var callback = function (code, response) {}
```

Meanwhile, the response object is only available when a response is returned, here is an example:

```javascript
// The response object 
{
    // TODO
}
```

##Example

```javascript
var product = {
    product: 'https://www.cocos2d-x.org/demo/facebooktest/pay/item1.html'
};
facebook.pay(product, function(code, response){
    if (code == plugin.FacebookAgent.CODE_SUCCEED){
        if (response['status'] === 'completed')
            cc.log("Success: " + response['amount'] + response['currency']);
        else 
            cc.log("Abnormal: " + response['status'])
    } else {
        cc.log("Request send failed, error #" + code + ": " + response);
    }
});
```

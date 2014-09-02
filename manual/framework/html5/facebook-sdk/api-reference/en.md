#Facebook SDK Beta for Cocos2d-JS API Reference

This document provides the API details for the Facebook SDK for Cocos2d-JS.

##FacebookAgent class
`plugin.FacebookAgent` is a singleton class which encapsulated all APIs of Facebook SDK Beta for Cocos2d-JS, if you want to use it, you need to retrieve its instance firstly.

|Name|Description|
|----|-----------|
|[getInstance](./get-instance.md)|Initialize the SDK, and return the instance of plugin. Required before doing anything else.|
|[destroyInstance](./destroy-instance)|Destroy the instance of plugin.|

##User APIs

|Name|Description|
|----|-----------|
|[login](./login.md)|Ask a user to authorize your app.|
|[logout](./logout.md)|Log a user entirely out of Facebook.|
|[isLoggedIn](./isloggedin.md)|Check whether user have been logged in to Facebook.|
|[requestAccessToken](./request-accesstoken.md)|Retrieve the user access token.|
|[requestPermissions](./request-permissions.md)|Ask user for Facebook permissions, you must have the correspondent permissions to invoke the Open Graph APIs.|

##Share APIs

|Name|Description|
|----|-----------|
|[share](./share.md)|Share a simple message on user's Facebook page.|
|[dialog](./dialog.md)|Trigger the Facebook Dialog for sharing or sending message.|

##Open Graph APIs

|Name|Description|
|----|-----------|
|[request](./request.md)|Send an Open Graph API request.|

##Payments APIs

|Name|Description|
|----|-----------|
|[pay](./pay.md)|Send a payment request.|

##AppEvent APIs
|Name|Description|
|----|-----------|
|[publishInstall](./publish-install.md)|Send an install message to Facebook.|
|[logEvent](./logevent.md)|Log an app event with the specified name, supplied value, and set of parameters.|

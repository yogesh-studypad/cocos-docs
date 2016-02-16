# Extend the editor

The extension of Cocos Creator editor is realized by adding plugin package to `~/.CocosCreator/packages`.
The plugins of Cocos Creator follow the package designing method of the node.js community, which describes your plugins
by `package.json` document.

## Structure

The structure of a plugin package is generally as follows:

```
MyPackage
  |--(optional)panel
  |   |--mypanel.html
  |   |--(optional)mypanel.js
  |   |--(optional)mypanel.css
  |--(optional)assets
  |     |--my-asset
  |       |--my-asset-inspector.html
  |--main.js
  |--package.json
```

The above package includes the general structure of the whole plugin package:

 - `main.js`: This is the entry document of the plugin package. In the initial phase of the plugin package, the loading of plugins will be implemented by running this entry document.
 -`package.json`: This is the descriptive document of the plugin package, which records the main content of this package, panel information, etc. It's the key document that can be loaded and unloaded in the entire plugin package.
- `panel`: This is the panel folder. If you want to define your tool set by yourself, then you need to start from the panel folder.
- `assets`: This is the resource folder. If you want to define your resource extension scheme by yourself, then you need to start from the resource folder.

## Detailed introduction to package.json document

Every package needs a `package.json` document to describe its function. Only in this way can Cocos Creator editor know
what extensions this package needs and load extensions correctly. It's worth mentioning that, though the definition of `package.json`  on many fields is similar to
that of npm package in node.js, they still are used for different products. Therefore, packages downloaded from npm community can not be directly put
into Cocos Creator and function as plugins.

Here's a simple package document description:

```json
{
  "name": "demo-simple",
  "version": "0.0.1",
  "description": "Simple Demo",
  "author": "Cocos Creator",
  "main": "main.js",
  "menus": {
    "Examples/Simple": {
      "message": "demo-simple:open"
    }
  }
}
```

Explanations:

 - `name` String - defines the package name. The package name is unique in the set, which is associated with the name you used to login the offical website server.
 - `version` String - version number. [semver](http://semver.org/) format is recommended to manage your package version.
 - `description` String (optional) - describes what the package does with one line.
 - `author` String (optional) - package author
 - `build` Boolean (optional) - whether use third-party tool to code this package or not
 - `hosts` Object (optional) - host version. Normally our host is Cocos Creator. By defining host version, one can pre-test if the current Cocos Creator version can load this package
 - `main` String (optional) - entry document
 - `dependencies` Object (optional) - dependency list. The dependency lists of other packages can be written here. Cocos Creator will help you load other packages according to dependency lists

## Entry document

After defining the descriptive document, the entry document `main.js` needs to be written next. An entry document is generally as follows:

```javascript
module.exports = {
  load () {
    // implement when package is loaded correctly
  },

  unload () {
    // implement when package is unloaded correctly
  }
};
```

## More contents

Currently, plugin system is not officially open. There still are some tests and documental works need to be finished. The whole plugin system will be opened step by step.
Let developers develop Cocos Creator's main menu, tool panel, user-defined resource and other contents by plugins.

Coming soon!

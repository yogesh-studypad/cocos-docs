# Release on Web platform

Open `document/constructing release` of main menu to open the window of constructing release.

Cocos Creator provides page templates for two kinds of Web platforms. You can choose `Web Mobile` or `Web Desktop` from the pop up menu of **release platform**. Their major difference is that: `Web Mobile` will fully cover the whole browser window with the game image by default; but `Web Desktop` allows developers to designate a resolution for the game image when releasing, and the size of the game image will not change along with the changes in the size of browser window later.

## Release a path

Developers can designate a release path for the game by inputting a path in **release path** input field or directly choosing one by the `...` browsing button. Following transplatform releases will create resources or projects in child folders of this release path.

The default release path is in the `build` folder under project folder. If you use versions like git, svn, etc., to control the system, you can ignore the `build` folder in version control. 


## Construct and preview

The construction of Web platform is very easy; it just involves zipping the scripts and resources in the game project and resource library and then copying and pasting them on to the designated release path. If you need test, you can open the option of ** test mode**. Versions constructed by this method will preserve sourcemap.

Click the **construct** button to start the construction of the Web platform version. A progress bar will appear on the top of the panel. When the progress bar reaches 100%, the construction is finished.

Next, developers can click the **preview** button, open the constructed game version in the browser to preview and test it.

![web desktop](publish-web/web_desktop.png)

What is shown in the above picture is the preview of the Web Desktop mode. You can see that the resolution of the game image is fixed. The game image will not fully cover the browser window.

## Release on Web server

If you want to release or share your game on the Internet, click the **open** button adjacent to **release path**. After opening release path, wholly copy the content in the constructed `web-mobile` or `web-desktop` folders and paste them onto your Web server, then you can visit the game by corresponding address.

For the construction of the Web server, you can search solutions concerning Apache, Nginx, IIS, Express, etc., by yourself.

---

To understand how to release games on original platforms, please continue to read the introductory document of [cocos-framework.md].
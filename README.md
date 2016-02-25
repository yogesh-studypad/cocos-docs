Documentation
===============
This is the Cocos Documentation Repo. It is licensed under the
[`Creative Commons BY-SA` license.]( https://creativecommons.org/licenses/by-sa/4.0/)

You can read these docs [online](http://www.cocos2d-x.org/docs).

## This repo builds
* Cocos docs
* Installation docs
* Programmers Guide
* API-Reference
* Services, like SDKBOX

## Directory layout
* `api-ref/` - API Reference, build.sh does a lot here that is not in this dir.
* `blank.md` - a blank page that is used when building print versions
* `build.sh` - BASH script that build web and print versions, deploys to staging server
* `catalog/` -
* `cocos/` - docs relating to Cocos
* `deploy.sh` - this script deploys the docs to cocos2d-x.org/docs
* `index.md` - this is the main landing page, part static, part dynamically created in `build.sh`
* `installation/` - docs relating to installation on supported platforms
* `LICENSE.md` - licensing
* `manual/` -
* `mkdocs.yml` - MKDocs configuration
* `programmers-guide/` - The Cocos2d-x Programmers Guide
* `README.md` - this file :-)
* `release-notes/` - release notes
* `services/` - docs relating to supported services, like SDKBOX
* `static-pages/` - static pages that we need
* `styling/` - CSS for print version of the Programmers Guide
* `theme/` - custom theme for web version
* `title.md` - title page
* `tutorial/` - Tutorials

## What do you need to build for OS X?
* Pandoc: http://johnmacfarlane.net/pandoc/getting-started.html

* A LaTex Distribution: http://www.tug.org/mactex/downloading.html
* run: sudo /usr/local/texlive/2014basic/bin/universal-darwin/tlmgr update --self
* run: sudo /usr/local/texlive/2014basic/bin/universal-darwin/tlmgr  install collection-fontsrecommended
* run: sudo /usr/local/texlive/2014basic/bin/universal-darwin/tlmgr install ec ecc
* export TEXROOT=/usr/local/texlive/2014basic/bin/universal-darwin/
* export PATH=$TEXROOT:$PATH

* To build the c++ API Ref you need a customized Doxygen version from https://github.com/zilongshanren/doxygen

* To build the JavaScript API Ref you need __jsdoc_toolkit__ which is usually placed in __<Cocos2d-x root>/web/tools__. It can be found here: http://cocos2d-x.org/docs/jsdoc_toolkit-2.4.0.zip

## How to run/test these docs
* __cd <where you cloned this repo>__
* run __build.sh --all__
* run __mkdocs serve__

Any changes made while __mkdocs serve__ is running are automatically rebuilt.

## How to build for deployment
* __cd <where you cloned this repo>__
* run __build.sh --all__

Content is built in __docs__ and deployed to __site__. This script also builds the
ePub and PDF versions as well as deploys out to our staging server and http://www.cocos2d-x.org/docs

## API-Ref
The legacy API-Refs are now downloaded and deployed as needed. No need for us to store these
in GitHub as they don't change.
* __cd <where you cloned this repo>__
* run __build.sh --legacyapi__

## When contributing
* make sure to break lines at 80 columns.
* edit via a __pull request__. Please *do not* edit chapters and push directly.
* if you are creating a new document, please don't make it feel and sound like an
  API Reference. Please tell a story about your content. We want to make this engage
  the user. If in doubt: read Chapter 2 and notice it feels like a chapter in a book.
* contact me via e-mail or on the forums to discuss what you want to add, edit, etc.

## Additional layout notes
* each chapter has a markdown file and 3 image directories associated with it.
* the image directories are __-web__, __-print__ and __-img__.  __-web__ is
  properly sized images for displaying on the web. __print__ is properly sized
  images for displaying in the __epub__ and __pdf__. __-img__ is were to put the
  original images (also displayed when viewing from GitHub).
* the __build.sh__ script does copying and renaming of directories during the build
  process since the markdown files expects files at a specific path. Take a look.
* if a chapter does not have any images there is no need to create directories
  for it.

## Supporting multiple languages (cpp, js, lua)
To support C++, JavaScript, (and technically Lua when ready), you can easily embed
__div__ elements and put the content for that language in between:

Example for C++:
  ```
  <div class="langs">
  <ul>
    <li><a href="#" id="tab-cpp">C++</a></li>
    <li><a href="#" id="tab-js">Javascript</a></li>
  </ul>
</div>
  <div class="tab-cpp tab_content">

some content that is c++ specific.....


more c++ specific content....
```
```cpp
auto mySprite = Sprite::create("mysprite.png");
```
```
even more c++ specific content....
  </div>
```

Example for Javascript:
```
  <div class="tab-js tab_content">

some javascript specific content...
```
```javascript
var mySprite = Sprite.create("mysprite.png");
```
```
more javascript content....

  </div>
```
__Note:__ there is a blank line after the opening __div__ and before the closing
__div__ elements. This is a __markdown__ requirement or else it will not render
properly.

__Note:__ Also notice that the __div__ elements are indented by a single __tab__.
This is also a __markdown__ requirement or else the text will not render properly.

## If you find an error
* report via GitHub issues: https://github.com/chukong/cocos-docs/issues
* or clone and submit a pull request to fix it: https://github.com/chukong/cocos-docs/pulls

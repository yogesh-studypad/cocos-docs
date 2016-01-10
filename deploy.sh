#!/bin/bash

echo "this script builds and then deploys the Cocos2d-x documentation"
echo "run the build.sh script just in case..."
./build.sh

echo 'applying custom changes used only for production...'
#cp search.html site/.
#cp tipuesearch.js site/js/tipuesearch/.

echo "deploying site/ via rsync..."
rsync -au site/* docops@cocos2dx:/documentation/.

echo 'deployment is done, if no errors were shown above this line...'

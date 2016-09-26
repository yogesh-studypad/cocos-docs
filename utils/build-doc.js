var mds = require('markdown-styles');
var Path = require('path');
var Del = require('del');

Del.sync('output');

mds.render(mds.resolveArgs({
    input: Path.normalize(process.cwd() + '/manual/framework/native'),
    output: Path.normalize(process.cwd() + '/output/native'),
    layout: Path.normalize(process.cwd() + '/utils/layout-github')
}), function() {
    console.log('Native done!');
});


mds.render(mds.resolveArgs({
    input: Path.normalize(process.cwd() + '/manual/framework/cocos2d-js'),
    output: Path.normalize(process.cwd() + '/output/js'),
    layout: Path.normalize(process.cwd() + '/utils/layout-github')
}), function() {
    console.log('js done!');
});

mds.render(mds.resolveArgs({
    input: Path.normalize(process.cwd() + '/manual/framework/html5'),
    output: Path.normalize(process.cwd() + '/output/html5'),
    layout: Path.normalize(process.cwd() + '/utils/layout-github')
}), function() {
    console.log('html5 done!');
});


var mds = require('markdown-styles');
var Path = require('path');
var Del = require('del');

Del.sync('output/native');

mds.render(mds.resolveArgs({
    input: Path.normalize(process.cwd() + '/manual/framework/native'),
    output: Path.normalize(process.cwd() + '/output/native'),
    layout: Path.normalize(process.cwd() + '/utils/layout-github')
}), function() {
    console.log('All done!');
});


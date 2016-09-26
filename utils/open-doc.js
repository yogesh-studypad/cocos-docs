var Path = require('path');
var cmdStr = process.platform === 'win32' ? 'start' : 'open';
var exec = require('child_process').exec;
exec(cmdStr + ' ' + Path.resolve('output/native/index.html'), function(err) {
    if (err) {
        console.log(err);
    }
});
#!/usr/bin/env node

var fs = require('fs')
    ,path = require('path')
    ,coffeelint = require('coffeelint')
    ,spawn = require("child_process").spawn
    ,os = require('os');

require('coffee-script/register');

var coffeelintInternaljson = JSON.parse(fs.readFileSync('coffeelint-internal.json'));
var coffeelintFinalJson = {}

thisdir = path.dirname(fs.realpathSync(__filename));
rulesdir = path.join(thisdir, '..', "rules");
var resolvedpath = path.relative(process.cwd(), rulesdir)

var dirread = fs.readdirSync(rulesdir);

dirread.forEach(function(dirrule){
    var ruledirresolved = path.join(rulesdir,dirrule);
    var toCoffeelintJson = 'sm-modules-coffeelint/rules/'+dirrule
    coffeelintFinalJson[dirrule] = {}
    coffeelintFinalJson[dirrule]['module'] = toCoffeelintJson;
    for(var i in coffeelintInternaljson){
        coffeelintFinalJson[i] = coffeelintInternaljson[i]
    }
})

fs.writeFileSync('coffeelint.json',JSON.stringify(coffeelintFinalJson,'\n'))
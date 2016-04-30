require('coffee-script/register')
coffeelint = require('coffeelint')
fs = require('fs')
firstrule = require('testingrule.coffee')

console.log('first rule',firstrule)

coffeelint.registerRule(firstrule)
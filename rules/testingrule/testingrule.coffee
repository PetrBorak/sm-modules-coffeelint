indentationRegex = /\s+/
consoleRegex = /console.log/

module.exports = class testingrule

    constructor: ()->
    rule:
        name: 'testingrule'
        level: 'error'
        message: 'Do not use the console.log. Use sm-logger instead'
        description: '''
            Forbid consolel.log usage
            '''
    lintLine: (line, lineApi) ->
        if consoleRegex.test(line)
            true
        else
            null
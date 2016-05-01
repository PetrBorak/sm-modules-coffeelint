indentationRegex = /\s+/
consoleRegex = /console.(log|warn|clear|assert|count|debug|dir|error|group|info|profile|time)/

module.exports = class testingrule

    constructor: ()->
    rule:
        name: 'testingrule'
        level: 'error'
        message: 'Do not use the console command. Use sm-logger instead'
        description: '''
            Forbid console usage
            '''
    lintLine: (line, lineApi) ->
        if consoleRegex.test(line)
            true
        else
            null
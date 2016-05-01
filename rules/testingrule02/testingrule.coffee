console.log('++++++++++++++++++++++')
module.exports = class testingrule

    constructor: ()->
        console.log('TESTING RULE CONSTRUCTOR02')
    rule:
        name: 'testingrule02'
        level: 'error'
        message: 'No comment'
        description: '''
            Disallows any comment in the code
            '''

    tokens: ['->']

    lintToken : (token, tokenApi) ->
        console.log('JSEM |TU02',token)
        return {context: "Found 02 '#{token[0]}'"}

    lintLine: (token,tokenAPI) ->
        console.log('LINT LINE 02')
        return true
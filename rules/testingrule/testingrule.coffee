console.log('++++++++++++++++++++++')
module.exports = class testingrule

    constructor: ()->
        console.log('TESTING RULE CONSTRUCTOR')
    rule:
        name: 'testingrule'
        level: 'error'
        message: 'No comment'
        description: '''
            Disallows any comment in the code
            '''

    tokens: ['->']

    lintToken : (token, tokenApi) ->
        console.log('JSEM |TU',token)
        return {context: "Found '#{token[0]}'"}

    lintLine: (token,tokenAPI) ->
        console.log('LINT LINE')
        return true
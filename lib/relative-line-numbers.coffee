LineNumberView = require './line-number-view'

module.exports =
  # Config schema
  config:
    trueNumberCurrentLine:
      type: 'boolean'
      default: true
      description: 'Show the true number on the current line'
    showNormalLineNumbers:
      type: 'boolean'
      default: true
      description: 'Show normal line numbers'

  configDefaults:
    trueNumberCurrentLine: true
    showNormalLineNumbers: true

  activate: (state) ->
    console.log('Activiating relative line numbers.');
    atom.workspace.observeTextEditors (editor) ->
      new LineNumberView(editor)

  deactive: () ->

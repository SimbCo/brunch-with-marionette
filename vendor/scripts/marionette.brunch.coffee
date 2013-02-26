Backbone.Marionette.Renderer.render = (templateName, data) ->
  if _.isFunction templateName
    template = templateName
  else
    template = require templateName

  return template data


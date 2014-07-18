application = require 'application'

module.exports = class AppLayout extends Backbone.Marionette.LayoutView
	template: 'views/templates/appLayout'
	el: "body"

	regions:
		content: "#content"
				

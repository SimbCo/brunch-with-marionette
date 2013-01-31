application = require 'application'

module.exports = class AppLayout extends Backbone.Marionette.Layout
	template: require('views/templates/appLayout')
	el: "body"

	regions:
		content: "#content"
				
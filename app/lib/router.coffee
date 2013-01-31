application = require('application')
HomeView = require('views/HomeView')

module.exports = class Router extends Backbone.Router

	routes:
		'': 'home'

	home: =>
		hv = new HomeView()
		application.layout.content.show(hv)
		

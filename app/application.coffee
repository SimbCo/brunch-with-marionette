require 'lib/view_helper'


class Application extends Backbone.Marionette.Application
    initialize: =>
         
        @on("initialize:after", (options) =>
            Backbone.history.start();
            # Freeze the object
            Object.freeze? this
        )

        @addInitializer( (options) =>

            AppLayout = require 'views/AppLayout'
            @layout = new AppLayout()
            @layout.render()
            
        )

        @addInitializer((options) =>
            # Instantiate the router
            Router = require 'lib/router'
            @router = new Router()
        )

        @start()



module.exports = new Application()

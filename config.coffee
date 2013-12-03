exports.config =
  # See docs at http://brunch.readthedocs.org/en/latest/config.html.
  files:
    javascripts:
      defaultExtension: 'coffee'
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/
        'test/javascripts/test.js': /^test[\\/](?!vendor)/
        'test/javascripts/test-vendor.js': /^test[\\/](?=vendor)/
      order:
        before: [
          'vendor/scripts/console-helper.js'
          'vendor/scripts/jquery.js'
          'vendor/scripts/underscore.js'
          'vendor/scripts/backbone.js'
          'vendor/scripts/backbone.marionette.js'
          'vendor/scripts/bootstrap.min.js'
        ]
        after: [
          'test/vendor/scripts/test-helper.js'
        ]

    stylesheets:
      defaultExtension: 'styl'
      joinTo:
        'stylesheets/app.css': /^app(\/|\\)views(\/|\\)styles(\/|\\)/
        'stylesheets/vendor.css': /^vendor(\/|\\)styles/
        'test/stylesheets/vendor.css': /^test(\/|\\)vendor(\/|\\)styles(\/|\\)/
      order:
        before: [
          'vendor/styles/bootstrap.min.css'
          'vendor/styles/bootstrap-theme.min.css'
        ]
        after: []

    templates:
      defaultExtension: 'hbs'
      joinTo: 'javascripts/app.js'

HomeView = require 'views/HomeView'

describe 'HomeView', ->
  beforeEach ->
    @view = new HomeView
    @view.render()

  afterEach ->
    @view.close()

  it 'should auto-render', ->
    expect(@view.$el.find '.jumbotron').to.have.length 1

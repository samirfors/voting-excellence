View = require 'views/base/view'
template = require 'views/templates/home_page'
UsersListView = require 'views/users_list_view'

module.exports = class HomePageView extends View
  template: template
  container: '.container'
  className: 'home-page'
  autoRender: true

  initialize: ->
    super
    @on 'addedToDOM', @renderSubviews

  renderSubviews: ->
    @view = new UsersListView collection: @collection
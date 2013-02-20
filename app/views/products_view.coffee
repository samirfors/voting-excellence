View = require 'views/base/view'
template = require 'views/templates/home_page'
ProductsListView = require 'views/products_list_view'

module.exports = class ProductsView extends View
  template: template
  container: '.container'
  className: 'product-page'
  autoRender: true

  initialize: ->
    super
    @on 'addedToDOM', @renderSubviews

  renderSubviews: ->
    @view = new ProductsListView collection: @collection

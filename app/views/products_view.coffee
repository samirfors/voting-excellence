View = require 'views/base/view'
template = require 'views/templates/product_page'
ProductsListView = require 'views/products_list_view'

module.exports = class ProductsView extends View
  template: template
  container: '.container'
  className: 'product-page'
  autoRender: true

  initialize: (options) ->
    super
    console.log ['userid from product-page', options.userId]
    @on 'addedToDOM', @renderSubviews

  renderSubviews: ->
    @view = new ProductsListView collection: @collection

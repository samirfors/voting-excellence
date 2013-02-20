CollectionView = require 'views/base/collection_view'
ProductListItemView = require 'views/product_list_item_view'

module.exports = class ProductsListView extends CollectionView
  container: '.container'
  className: 'product-view'
  itemView: ProductListItemView
  autoRender: true
  RenderItems: true
  tagName: 'ul'

  initialize: ->
    super
    console.log ['products-list-view', @collection]

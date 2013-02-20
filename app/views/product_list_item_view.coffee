View = require 'views/base/view'
template = require 'views/templates/product-list-item'

module.exports = class ProductListItemView extends View
  template: template
  className: 'product-list-item'
  tagName: 'li'

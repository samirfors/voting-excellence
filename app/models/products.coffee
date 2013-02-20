Collection = require 'models/base/collection'
Product = require 'models/product'

module.exports = class Products extends Collection
  model: Product

  url: '/mock/products.json'

  initialize: ->
    @fetch()
      # success: (a,b,c) ->
      #   console.log ['success', a,b,c]
      # error: (a,b,c) ->
      #   console.log ['error', a,b,c]
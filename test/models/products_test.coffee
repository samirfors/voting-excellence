Collection = require 'models/base/collection'
Product = require 'models/product'
Products = require 'models/products'

describe 'Product', ->
  beforeEach ->
    @model = new Product()
    @collection = new Products()

  afterEach ->
    @model.dispose()
    @collection.dispose()

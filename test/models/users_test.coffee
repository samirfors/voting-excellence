Collection = require 'models/base/collection'
Users = require 'models/users'
Users = require 'models/users'

describe 'Users', ->
  beforeEach ->
    @model = new Users()
    @collection = new Users()

  afterEach ->
    @model.dispose()
    @collection.dispose()

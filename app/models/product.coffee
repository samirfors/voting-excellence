Model = require 'models/base/model'

module.exports = class Product extends Model

  initialize: ->
    super
    self = @
    setTimeout () ->
      self.set({"allocated": 1231})
    , 1000

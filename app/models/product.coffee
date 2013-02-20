Model = require 'models/base/model'
mediator = require 'mediator'

module.exports = class Product extends Model
  allocation_url: '/mock/allocation.json'

  initialize: ->
    super
    self = @
    console.log [@get('id'), mediator.user]
    $.getJSON(@allocation_url).success(
      (a,b,c) ->
        self.set {"user_allocated": a.allocated}
        console.log a.allocated
    ).error(
      () -> console.log("error!!!!!!")
    )

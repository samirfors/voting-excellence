Collection = require 'models/base/collection'
User = require 'models/user'

module.exports = class Users extends Collection
  model: User

  url: '/mock/users.json'

  initialize: ->
    console.log 'init users'

    @fetch
      success: (c, r, o) ->
        console.log ['success', c, r, o]
      error: (c, x, o) ->
        console.log ['error', c, x, o]

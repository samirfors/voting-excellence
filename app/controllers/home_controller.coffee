Controller = require 'controllers/base/controller'
HomePageView = require 'views/home_page_view'
mediator = require 'mediator'

module.exports = class HomeController extends Controller
  historyURL: 'home'

  index: ->
    @title = 'User list'
    @view = new HomePageView()

  setuser: (params) ->
    mediator.user = params.id
    console.log ['bajs']
    @publishEvent '!router:route', '/products'
    @publishEvent '!router:changeURL', '/products'

  products: ->
    if mediator.user is null then @publishEvent '!router:route', ''
    console.log ['gimmie some products', mediator.user]
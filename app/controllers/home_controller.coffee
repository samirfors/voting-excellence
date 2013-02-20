Controller = require 'controllers/base/controller'
UsersCollection = require 'models/users'
HomePageView = require 'views/home_page_view'
mediator = require 'mediator'
ProductsView = require 'views/products_view'
ProductsCollection = require 'models/products'

module.exports = class HomeController extends Controller
  historyURL: 'home'

  index: ->
    $('.container').html ''
    @title = 'User list'
    @users = new UsersCollection()
    @view = new HomePageView collection: @users

  setuser: (params) ->
    mediator.user = params.id
    @publishEvent '!router:route', '/products'
    @publishEvent '!router:changeURL', '/products'

  products: ->
    $('.container').html ''
    if mediator.user is null then @publishEvent '!router:route', '' else
      @title = 'Product list'
      @products = new ProductsCollection()
      @view = new ProductsView
        collection: @products

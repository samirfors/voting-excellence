Controller = require 'controllers/base/controller'
UsersCollection = require 'models/users'
HomePageView = require 'views/home_page_view'
ProductsView = require 'views/products_view'
ProductsCollection = require 'models/products'

module.exports = class HomeController extends Controller
  historyURL: 'home'

  index: ->
    @title = 'User list'
    @users = new UsersCollection()
    @view = new HomePageView collection: @users

  products: ->
    @title = 'Product list'
    @products = new ProductsCollection()
    @view = new ProductsView collection: @products

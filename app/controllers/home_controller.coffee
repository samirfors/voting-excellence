Controller = require 'controllers/base/controller'
UsersCollection = require 'models/users'
HomePageView = require 'views/home_page_view'

module.exports = class HomeController extends Controller
  historyURL: 'home'

  index: ->
    @collection = new UsersCollection()
    @view = new HomePageView()

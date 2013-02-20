template = require 'views/templates/user-list-item'
View = require 'views/base/view'

module.exports = class UsersListItemView extends View
  template: template
  className: 'user-list-item'
  tagName: 'li'

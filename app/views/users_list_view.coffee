CollectionView = require 'views/base/collection_view'
UserListItemView = require 'views/user_list_item_view'

module.exports = class UsersListView extends CollectionView
  container: '.home-page'
  className: 'user-list'
  itemView: UserListItemView
  autoRender: true
  RenderItems: true
  animationDuration: 100
  tagName: 'ul'

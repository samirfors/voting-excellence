module.exports = (match) ->
  match '', 'home#index'
  match 'users/:id', 'home#setuser'
  match 'products', 'home#products'
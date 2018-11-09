Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  post '/crypto-index', to: 'home#search_crypto'
  post '/film-index', to: 'movies#search'
end

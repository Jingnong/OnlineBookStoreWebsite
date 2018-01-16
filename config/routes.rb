Rails.application.routes.draw do
  get 'search/index'

  get 'contact/index'

  get 'questions/index'

  get 'news/index'

  # get 'access/new'
  #
  # get 'access/create'
  #
  # get 'access/destroy'

  # get 'admin/index'

  get 'admin', to: 'admin#index'

  get 'login', to: 'access#new'
  post 'login', to: 'access#create'
  delete 'logout', to: 'access#destroy'

  get 'news', to: 'news#index'
  get 'questions', to: 'questions#index'
  get 'contact', to: 'contact#index'
  get 'search', to: 'search#index'

  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  get 'shopper/index'

  root "shopper#index", as: 'root'

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

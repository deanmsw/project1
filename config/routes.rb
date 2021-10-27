Rails.application.routes.draw do

  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'carts/show'
  root :to => 'pages#home'
  resources :users, :only => [:index, :new, :create, :show]

  get '/users/:id/products' => 'users#products', :as => :users_products

  #carts
  get 'carts/:id' => "carts#show", as: "cart"
  delete 'carts/:id' => "carts#destroy"

  #lineItems
  post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
  post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
  post 'line_items' => "line_items#create"
  get 'line_items/:id' => "line_items#show", as: "line_item"
  delete 'line_items/:id' => "line_items#destroy"



  resources :products
  resources :categories
  resources :locations
  resources :orders

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


end

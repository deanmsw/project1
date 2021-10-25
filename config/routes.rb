Rails.application.routes.draw do

  root :to => 'pages#home'
  resources :users, :only => [:index, :new, :create, :show]

  get '/users/:id/products' => 'users#products', :as => :users_products


  resources :products
  resources :categories

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


end

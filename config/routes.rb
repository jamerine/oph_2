Rails.application.routes.draw do

  get 'sessions/new'

  get 'users/new'

  get 'welcome/home'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :menus


  # resources :abouts

  # resources :contacts

  resources :comments

  resources :positions

  resources :reviews

  resource :menu

  resource :about

  resource :contact

  resources :products

  namespace :api do
    namespace :v1 do
      resource :cart, only: [:show]
      resources :order_items
      resources :orders
      resources :products, only: [:index]
    end
  end



  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users




  # get 'menu', to: :index, controller: 'menus'
  #
  # get 'about', to: :index, controller: 'abouts'
  #
  # get 'contact', to: :index, controller: 'contacts'


end

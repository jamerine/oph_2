Rails.application.routes.draw do
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
  # get 'menu', to: :index, controller: 'menus'
  #
  # get 'about', to: :index, controller: 'abouts'
  #
  # get 'contact', to: :index, controller: 'contacts'


end

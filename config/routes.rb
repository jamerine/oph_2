Rails.application.routes.draw do
  get 'welcome/home'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :menus

  resources :abouts

  resources :contacts

  resources :comments

  resources :positions

  resources :reviews

end

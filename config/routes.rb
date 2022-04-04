Rails.application.routes.draw do
  resources :profiles
  resources :fames
  resources :negatives
  resources :posts
  devise_for :users
  resources :friends
  #get 'home/index'
  get 'home/about'
  get 'search', to: "posts#search"
  #root 'home#index'
  root 'friends#index'
 get '/check', :controller=>'fames', :action=>'checkfame'
 post '/validate', :controller=>'fames', :action=>'isfame'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

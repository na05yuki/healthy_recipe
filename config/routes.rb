Rails.application.routes.draw do

  devise_for :users
  
  root to: 'recipes#index'
  resources :recires, only: :index
end

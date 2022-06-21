Rails.application.routes.draw do

  devise_for :users
  
  root to: 'recipes#index'
  get '/recipes/category', to: 'recipes#category'
  resources :recipes
end

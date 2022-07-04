Rails.application.routes.draw do

  devise_for :users
  resources :user, only: [:show, :edit, :update] do
    get :favorites, on: :collection
  end
  
  root to: 'recipes#index'
  resources :recipes do
    collection do
      get 'category'
    end
    resources :favorites, only:[:create, :destroy]
  end
end

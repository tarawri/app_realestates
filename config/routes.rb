Rails.application.routes.draw do
  # get 'commits/index'
  # get 'commits/show'
  # get 'commits/edit'
  # get 'commits/new'
  
  # get 'realestates/index'
  # get 'realestates/show'
  # get 'realestates/new'
  # get 'realestates/edit'

  resources :realestates do
    resources :commits

  end
  devise_for :users
  # get '/homes', to: 'homes#index'
  root "homes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

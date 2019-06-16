Rails.application.routes.draw do
  # get 'realestates/index'
  # get 'realestates/show'
  # get 'realestates/new'
  # get 'realestates/edit'

  resources :realestates
  devise_for :users
  # get '/homes', to: 'homes#index'
  root "homes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

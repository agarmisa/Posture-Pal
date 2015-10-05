Rails.application.routes.draw do
  # root 'program#show'
  root 'homes#index'

  devise_for :users

  resources :programs, only: [:show]

  resources :exercises, only: [:show]

end

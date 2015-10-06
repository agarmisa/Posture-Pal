Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/sign_out', to: 'sessions#destroy'
  # root 'program#show'
  root 'homes#index'

  devise_for :users

  resources :programs, only: [:show]

  resources :exercises, only: [:show]

end

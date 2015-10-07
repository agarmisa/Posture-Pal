Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/sign_out', to: 'sessions#destroy'
  root 'homes#index'
  devise_for :users
  resources :exercises, only: [:show]

end

Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/sign_out', to: 'sessions#destroy'
  root 'homes#index'
  devise_for :users

  resources :exercises, only: [:show]

  resources :users, only: [:index, :show, :edit, :update, :destroy] do
    resources :reminders, only: [:create] do
      resources :exercises, only: [:show]
    end
  end

  resources :users, only: [:index, :show, :edit, :update, :destroy] do
    resources :checkins, only: [:create]
  end
end

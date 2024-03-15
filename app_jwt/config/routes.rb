Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :users
  get 'users', to: 'users#index', as: 'users'
  get 'users/:id', to: 'users#show'
  post 'users', to: 'users#create'

  post 'auth/login', to: 'authentication#login'
end

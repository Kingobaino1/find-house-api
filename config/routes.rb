Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'houses#index'
  resources :houses, only: [:index, :create, :show]
  post '/login', to: 'users#login'
  resources :users, only: [:create] do
    resources :favourites, only: [:index, :create]
  end
end

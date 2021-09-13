Rails.application.routes.draw do
  root to: 'houses#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :houses
  resources :users, only: [:create] do
    resources :favourites
  end
 api_guard_routes for: 'users'
end

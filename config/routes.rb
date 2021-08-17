Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :houses
    end
  end
  resources :users, only: [:create] do
    resources :favourites
  end
  post "/login", to: "session#login"
  get "/auto_login", to: "session#auto_login"
  get "/user_is_authed", to: "session#user_is_authed"
end

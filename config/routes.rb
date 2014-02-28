Facespace::Application.routes.draw do
  get "users/index"
  devise_for :users
  resources :users, only: [:index]
  root "static#index"

end

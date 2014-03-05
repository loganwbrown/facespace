Facespace::Application.routes.draw do
  get "users/index"
  devise_for :users, controllers: { registrations: 'registrations'}
  resources :users, only: [:index]
  root "static#index"
  get '/welcome' => 'static#welcome'
  get '/anniversary' => 'static#anniversary'
  match '/contact' => 'static#contact', via: [:get, :post]
  
end

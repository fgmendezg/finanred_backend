Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :fdnamedocs, only: [:index]
  resources :fdusuarios, only: [:index]
  post '/fdusuarios/loginMediator/', to: 'fdusuarios#loginMediator'
end

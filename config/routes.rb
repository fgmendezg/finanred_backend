Rails.application.routes.draw do
  post 'fdusuario_token' => 'fdusuario_token#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :fdnamedocs, only: [:index, :create]
  resources :fdusuarios, only: [:index, :create]
  post '/fdusuarios/loginMediator/', to: 'fdusuarios#loginMediator'
  get '/fdusuarios/getDateCurrentUser/', to: 'fdusuarios#getDateCurrentUser'
  patch '/fdusuarios/updateuser/:id', to: 'fdusuarios#changeUser'
end

Rails.application.routes.draw do
  post 'fdusuario_token' => 'fdusuario_token#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :fdnamedocs, only: [:index]
  delete '/fdnamedocs/deletedocs/', to: 'fdnamedocs#destroy'
  post '/fdnamedocs/updatedocsci/', to: 'fdnamedocs#createIntelligent'
  get '/fdnamedocs/isexist/', to: 'fdnamedocs#isExist'
  
  resources :fdusuarios, only: [:index, :create]
  post '/fdusuarios/loginMediator/', to: 'fdusuarios#loginMediator'
  get '/fdusuarios/getDateCurrentUser/', to: 'fdusuarios#getDateCurrentUser'
  patch '/fdusuarios/updateuser/:id', to: 'fdusuarios#changeUser'
end

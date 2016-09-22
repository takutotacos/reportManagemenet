Rails.application.routes.draw do
  root to: 'login#init'
  post '/login' => 'login#login'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
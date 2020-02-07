Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'user/new'
  root 'static_pages#home'
  get  '/help' => 'static_pages#help'
  get  '/signup' => 'users#new'
  post '/signup',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

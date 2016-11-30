Rails.application.routes.draw do

  resources :users
  resources :topics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'landing#index'

  get '/hashtags', to: 'hashtag#index'
  post '/hashtags/create', to: 'hashtag#batch_create'

  root 'users#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  resources :users, except: [:new]
  # post '/users' => 'users#create'

  get '/dashboard' => 'dashboard#index'
  get 'dashboard/settings' => 'dashboard#settings'
  get 'dashboard/hashtags' => 'dashboard#hashtags'

  get '/landing' => 'landing#index'
end

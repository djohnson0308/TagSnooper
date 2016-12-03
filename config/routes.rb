Rails.application.routes.draw do

  resources :users
  resources :topics, except: :destroy

  delete '/topics/:name', to: 'topics#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'landing#index'

  get '/hashtags', to: 'hashtag#index'
  post '/hashtags/create', to: 'hashtag#batch_create'

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

  get '/topic/hashtags' => 'topics#get_hashtags'
end

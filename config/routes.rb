Rails.application.routes.draw do
  root to: 'about#index'

  resources :about, only: [:index]

  resources :products do
    resources :reviews
  end

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

end

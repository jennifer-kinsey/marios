Rails.application.routes.draw do
  root to: 'about#index'

  resources :about, only: [:index]

  resources :products do
    resources :reviews
  end

end

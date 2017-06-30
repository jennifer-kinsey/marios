Rails.application.routes.draw do
  root to: 'about#index'

  resources :products do
    resources :reviews, :except => [:show, :index]
  end

end

Rails.application.routes.draw do
  resources :materials
  devise_for :users
  root to: "home#index"
  get 'home/index'

end

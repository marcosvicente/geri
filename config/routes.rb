Rails.application.routes.draw do
  resources :materials
  devise_for :users
  root to: "materials#index"

end

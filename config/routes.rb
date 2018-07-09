Rails.application.routes.draw do
  root to: "materials#index"
  devise_for :users
  resources :materials, except: [:edit]
  get "materials/:id/entrada", to: 'materials#entrada', as: 'material_entrada', action: 'entrada'
  get "materials/:id/saida", to: 'materials#saida', as: 'material_saida' , action: 'saida'

end

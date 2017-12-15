Rails.application.routes.draw do
  resources :kinds
  
  resources :contacts do
    resource :kind, only: :show
    resource :kind, only: :show, path: 'relationships/kind'

    resource :phone, only: [:create, :destroy, :update]
    resource :phone, only: [:create, :destroy, :update], path: 'relationships/phones'

    resource :phones, only: :show    
    resource :phones, only: :show, path: 'relationships/phones'
  
    resource :address, only: [:create, :destroy, :show, :update]
    resource :address, only: [:create, :destroy, :show, :update], path: 'relationships/address'
  end
end

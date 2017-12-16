Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
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

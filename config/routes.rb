Rails.application.routes.draw do

  resources :mx_peers
  namespace :api do
    namespace :v1 do
     resources :mx_address_servers
     resources :mx_authorization_providers
     resources :mx_authentication_providers

    end
  end

  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end

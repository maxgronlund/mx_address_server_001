Rails.application.routes.draw do
  resources :mx_peers

  namespace :api do
    namespace :v1 do
       end
  end

  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end

Rails.application.routes.draw do
  resources :products do
    member do
      post :add_cart
      post :remove_cart
      post :delete_cart
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'products#index'
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'

  resources :products do
    resources :rentals, only: [ :new, :create, :edit, :update, :destroy ]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

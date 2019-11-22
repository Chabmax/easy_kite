Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'

  resources :products do
    resources :rentals, only: [ :index, :new, :create ]
  end

  resources :rentals, only: [:destroy, :edit, :update] do
    member do            # member => rental id in URL
      get 'confirm'      # RentalsController#confirm
    end
  end

  get '/dashboard', to: 'pages#dashboard'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

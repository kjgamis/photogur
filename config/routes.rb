Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root 'pictures#index'
  root 'home#index'

  resources :pictures do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end

  resource :users, only: [:new, :create]

  resource :sessions, only: [:new, :create, :destroy]

end

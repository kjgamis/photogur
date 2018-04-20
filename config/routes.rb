Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root 'pictures#index'
  root 'users#new'

  resources :pictures

  resource :users, only: [:new, :create]

end

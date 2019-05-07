Rails.application.routes.draw do
  # get 'users/show'
  # get 'static_pages/index'
  # get 'static_pages/secret'
  devise_for :users
  root 'events#index'
  resources :events, only: [:index, :show, :edit, :new, :create]
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

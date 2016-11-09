Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :jobs, only: [:show, :create, :new, :edit, :update]
  resources :companies, only: [:new, :create, :show]
  resources :categories, only: [:show]
end

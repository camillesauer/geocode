Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :trajets , only: [:index, :new, :create, :show, :update, :edit, :destroy]
  resources :poetes, only: [:index, :new, :create, :show, :update, :edit, :destroy]
  resources :actions, only: [:index]

  get    '/mentions'      => 'pages#mentions'
  get    '/journal'      => 'pages#journal'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

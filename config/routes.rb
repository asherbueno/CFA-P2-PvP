Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :profiles
  resources :posts
  devise_for :users
  root 'pages#landing'
  get 'pages/donate'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

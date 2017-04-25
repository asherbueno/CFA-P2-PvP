Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :profiles
  resources :posts do
    member do
      resources :charges
    end
  end

  devise_for :users
  root 'pages#landing'
  get 'pages/donate'
  get 'pages/user_dashboard'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users, controllers: {
                       omniauth_callbacks: "users/omniauth_callbacks",
                       registrations: "users/registrations",
                     }
  root "letters#index"
  resources :users, only: [:new, :show]
  resources :letters, only: [:index, :new, :create, :show]
end

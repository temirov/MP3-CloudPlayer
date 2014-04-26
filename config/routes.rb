A3Upload::Application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations", omniauth_callbacks: "users/omniauth_callbacks" }

  # devise_scope :user do
  #   get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # end
  resources :users

  root to: "home#index"
end
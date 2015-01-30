Rails.application.routes.draw do
  resources :products

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # You can have the root of your site routed with "root"
  root 'products#index'
end

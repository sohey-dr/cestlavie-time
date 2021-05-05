Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  require 'sidekiq/web'
  mount Sidekiq::Web, at: "/sidekiq"

  root to: 'toppages#index'
  get 'second', to: 'toppages#second'
  resources :bands, only: [:update]
end

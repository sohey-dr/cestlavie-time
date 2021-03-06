require 'sidekiq/web'

Rails.application.routes.draw do
  match '*path' => 'options_request#preflight', via: :options

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'  
  Rails.application.routes.draw do
    mount Sidekiq::Web, at: "/sidekiq"
  end

  namespace 'api' do
    namespace 'v1' do
      post 'login' => 'members#login'
    end
  end

  root to: 'toppages#index'
  get 'second', to: 'toppages#second'
  resources :bands, only: [:update]
end
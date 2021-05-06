require 'sidekiq/web'

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'  
  Rails.application.routes.draw do
    mount Sidekiq::Web, at: "/sidekiq"
  end

  namespace 'api' do
    namespace 'v1' do
      resources :members, :only => :show
    end
  end

  root to: 'toppages#index'
  get 'second', to: 'toppages#second'
  resources :bands, only: [:update]
end
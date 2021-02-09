Rails.application.routes.draw do
  root to: 'toppages#index'
  get 'second', to: 'toppages#second'
  resources :bands, only: [:update]
end

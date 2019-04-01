Rails.application.routes.draw do
  devise_for :users, module: :users
  root to: 'home#index'
  namespace :api, format: 'json' do
    resources :items , only: [:index, :create, :update]
  end
end

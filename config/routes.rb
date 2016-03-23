 Rails.application.routes.draw do
  get 'payments/new'

  scope '(:locale)', locale: /fr|es/ do
    resources :cocktails
  end

  require "sidekiq/web"

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root :to => "cocktails#index"

  #authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  #end
  resources :orders, only: [:show] do
    resources :payments, only: [:new, :create]
  end
  resources :cocktails, only: [:index, :show]

  resources :users do
    resources :events do
      resources :reviews, only: [:new, :create]
    end

    resources :reviews, only: [:index]

    resources :professionals, only: [:show, :new, :create, :edit, :update] do
      resources :events, only: [:index, :show], controller: 'professionals/events' do
        put 'confirm', to: 'professionals/events#confirm'
        resources :reviews, only: [:index]
      end
    end
  end

  resources :doses, only: [:destroy]
  resources :events, only: [:destroy]

end


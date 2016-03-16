 Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root :to => "cocktails#index"

  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    resources :doses, only: [:new, :create]
  end

  resources :users do
    resources :events do
      resources :reviews, only: [:new, :create]
    end

    resources :reviews, only: [:index]

    resource :professional, only: [:show, :new, :create, :edit, :update] do
      resources :reviews, only: [:index]
    end
  end

  resources :doses, only: [:destroy]
  resources :events, only: [:destroy]

end


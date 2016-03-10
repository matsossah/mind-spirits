Rails.application.routes.draw do
  root :to => "cocktails#index"

  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    resources :doses, only: [:new, :create]
  end

  Rails.application.routes.draw do
    devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  end

  resources :users do
    resources :events
    resources :professionals
  end



  resources :doses, only: [:destroy]
  resources :events, only: [:destroy]
end

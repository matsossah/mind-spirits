Rails.application.routes.draw do
  devise_for :barmen
  devise_for :users
  root :to => "cocktails#index"

  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    resources :doses, only: [:new, :create]
  end

  resources :users do
    resources :events
  end

  resources :barmen do
    resources :events
  end

  resources :doses, only: [:destroy]
  resources :events, only: [:destroy]
end

Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :teams, only: [:new, :create, :index]

  root 'teams#new'
end

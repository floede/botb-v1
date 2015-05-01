Rails.application.routes.draw do

  devise_for :users
  resources :teams, only: [:new, :create, :index]

  root 'teams#new'
end

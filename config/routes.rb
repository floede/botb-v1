Rails.application.routes.draw do

  resources :teams, only: [:new, :create, :index]

  root 'teams#new'
end

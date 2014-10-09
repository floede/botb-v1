Rails.application.routes.draw do

  resources :users, only: [:new, :create, :index]

  root 'users#new'
end

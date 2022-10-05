Rails.application.routes.draw do
  devise_for :users
  root 'users#index'

  resources :users
  resources :foods, only: %i[index new create destroy]
  resources :recipes
end

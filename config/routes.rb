Rails.application.routes.draw do
  root 'recipes#index'
  get 'recipes/new', to: 'recipes#new'
  post 'recipes', to: 'recipes#create'
  get 'recipes/:id', to: 'recipes#show'
  get 'recipes/:id/edit', to: 'recipes#edit'
  patch 'recipes/:id', to: 'recipes#update'
  delete 'recipes/:id', to: 'recipes#destroy'


  get 'recipes', to: 'recipes#index'
end 

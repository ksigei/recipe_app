Rails.application.routes.draw do
  root 'recipes#index'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
  get 'recipes/index'
  get 'recipes/show'
  get 'recipes/new'
  get 'recipes/edit'
  get 'recipes/:id', to: 'recipes#show'
  # delete 'recipes/:id', to: 'recipes#destroy'

end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users
  get 'users/:id' => 'users#show'
  get 'users' => 'users#index'
  get 'users/new' => 'users#new'
  get 'users/:id/edit' => 'users#edit'

  post 'users' => 'users#create'
  patch 'users/:id' => 'users#update'
  put 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'
  delete 'users' => 'users#index'
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :users, only: [:index, :create, :destroy, :show, :update]

   resources :users do
     resources :artworks, only: [:index]
   end

   resources :artworks, only: [:create, :destroy, :show, :update]

   resources :artworks do
     resources :comments, only: [:index, :destroy, :show, :update, :create]
   end

   resources :artwork_shares, only: [:create, :destroy]

  # get 'users/:id' => 'users#show'
  # get 'users' => 'users#index'
  # get 'users/new' => 'users#new'
  # get 'users/:id/edit' => 'users#edit'
  #
  # post 'users' => 'users#create'
  # patch 'users/:id' => 'users#update'
  # put 'users/:id' => 'users#update'
  # delete 'users/:id' => 'users#destroy'
  # delete 'users' => 'users#index'
end

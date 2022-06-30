Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users', to: 'users#index'
  post 'users', to: 'users#create'
  get 'users/:id', to: 'users#show'
  patch 'users/:id', to: 'users#update'
  put 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'

  resources :artworks, only: [:create, :show, :update, :destroy]
  resources :artwork_shares, only: [:create, :destroy]
  resources :comments, only: [:index, :create, :destroy]

  get 'users/:user_id/artworks', to: 'artworks#index'
end

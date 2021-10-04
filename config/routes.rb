Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  get 'movies/seen' => 'movies#seen' # or match for older Rails versions
  get 'pages/home'

  # root to: 'lists#index'
  resources :movies do
    resources :bookmarks, only: [ :new, :create ]
  end
  resources :lists do
    resources :bookmarks, only: [ :new, :create, :destroy]
  end

  devise_for :users
  root to: 'pages#home'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :movies, only: [ :index, :show, :create, :destroy ]
    end
  end
end

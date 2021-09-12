Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  get 'movies/seen' => 'movies#seen' # or match for older Rails versions

  root to: 'lists#index'
  resources :movies do
    resources :bookmarks, only: [ :new, :create ]
  end
  resources :lists do
    resources :bookmarks, only: [ :new, :create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  root to: 'lists#index'
  resources :movies do
    resources :bookmarks
  end
  resources :lists do
    resources :bookmarks
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

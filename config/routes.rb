Trailblaze::Application.routes.draw do
  resources :users do
    resources :trails
    resources :badges
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :trailmarkers
  root :to => 'static_pages#index'
  match '/signup', to: 'users#new', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
end






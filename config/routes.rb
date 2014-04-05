Trailblaze::Application.routes.draw do
  resources :trails
  resources :trailmarkers
  resources :users

  root :to => 'static_pages#index'

end






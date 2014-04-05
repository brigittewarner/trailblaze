Trailblaze::Application.routes.draw do
  resources :static_pages
  resources :trails
  resources :trailmarkers


  root :to => 'static_pages#index'

end






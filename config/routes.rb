Trailblaze::Application.routes.draw do
  resources :trails
  resources :trailmarkers
  
  root :to => 'static_pages#index'

end






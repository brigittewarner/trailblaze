Trailblaze::Application.routes.draw do
  resources :trails
  resources :trailmarkers
  resources :static_pages

  root :to => 'static_pages#index'
end






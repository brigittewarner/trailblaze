Trailblaze::Application.routes.draw do
  resources :static_pages
  resources :trails
  resources :trailmarkers

<<<<<<< HEAD
  root :to => 'static_pages#index'

#  root :to => 'trails#new'
=======

  root :to => 'static_pages#index'

  # root :to => 'trails#new'
>>>>>>> FETCH_HEAD

end






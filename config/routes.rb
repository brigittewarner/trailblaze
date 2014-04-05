Trailblaze::Application.routes.draw do
  resources :users do
    resources :trails do
    end
  end

  resources :trailmarkers

  root :to => 'static_pages#index'

  match '/signup', to: 'users#new', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'

end






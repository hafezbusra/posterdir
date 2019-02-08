Rails.application.routes.draw do
  root 'fyp_posters#index'

  resources :searches
  resources :fyp_posters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

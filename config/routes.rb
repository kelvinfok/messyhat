Rails.application.routes.draw do
  resources :sessions
  resources :skillsets
  resources :profiles
  resources :users

root to: "home#index"
get '/', to: 'home#index'

get 'contact', to: 'home#contact'
get 'about', to: 'home#about'
get 'terms', to: 'home#terms'

get 'signup', to: 'users#new'
get 'login', to: 'sessions#new'
get 'logout', to: 'sessions#destroy'



end

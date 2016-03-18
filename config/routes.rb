Rails.application.routes.draw do

root to: "home#index"
get '/', to: 'home#index'

get 'contact', to: 'home#contact'
get 'about', to: 'home#about'


end

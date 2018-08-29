Rails.application.routes.draw do
  #devise_for :admins
  #devise_for :admins
  #devise_for :users
  
  #devise_for :installs
  #devise_for :admins
  namespace :admin do
    resources :shops
    resources :restaurants
    resources :masjids
    resources :images
    get '/', to: 'home#index'
  end
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

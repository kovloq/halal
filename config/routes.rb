Rails.application.routes.draw do
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

Rails.application.routes.draw do
  get 'home/about'
  devise_for :users
  
  resources :posts do
    resources :comments
  end
  
  root "home#index"
end

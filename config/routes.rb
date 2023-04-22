Rails.application.routes.draw do
  get 'about', to: 'home#about'
  devise_for :users
  
  resources :posts do
    resources :comments
  end
  
  root "home#index"
end

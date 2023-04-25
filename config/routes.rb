Rails.application.routes.draw do
  scope "(:locale)", locale: /pt-BR|en/ do
    get 'about', to: 'home#about'
    devise_for :users
    
    resources :posts do
      resources :comments
    end
    
    root "home#index"
  end
end

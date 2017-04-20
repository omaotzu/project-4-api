Rails.application.routes.draw do
  scope :api do
    resources :users, except: [:create]
    resources :trips
    resources :stops
    resources :posts
    resources :comments
    resources :images
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    get 'flights', to: 'skyscanner#flights'
  end
end

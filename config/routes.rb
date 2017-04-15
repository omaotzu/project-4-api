Rails.application.routes.draw do
  resources :posts
  resources :stops
  resources :trips
  scope :api do
    resources :users, except: [:create]
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
  end
end

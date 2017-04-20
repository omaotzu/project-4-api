Rails.application.routes.draw do
  scope :api do
    resources :users, except: [:create]
    resources :trips
    resources :stops
    resources :posts do
      member do
        put "upvote", to: "posts#upvote"
        put "downvote", to: "posts#downvote"
      end
    end
    resources :comments
    resources :images
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
  end
end

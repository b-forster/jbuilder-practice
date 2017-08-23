Rails.application.routes.draw do
  get 'posts/index'

  resources :posts, only: [:index]
end

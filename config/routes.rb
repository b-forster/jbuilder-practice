Rails.application.routes.draw do
  get 'posts/index'

  resources :products, only: [:index]
end

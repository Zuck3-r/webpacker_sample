Rails.application.routes.draw do
  resources :posts
  resources :messages
  resources :users

  if Rails.env.development?
    require 'sidekiq/web'
    mount Sidekiq::Web => "/sidekiq"
  end
end

Rails.application.routes.draw do
  resources :customers
  resources :users

  if Rails.env.development?
    require 'sidekiq/web'
    mount Sidekiq::Web => "/sidekiq"
  end
end

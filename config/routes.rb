require 'sidekiq/web'

Rails.application.routes.draw do
  if Rails.env.development?
    mount Sidekiq::Web => '/sidekiq'
  end

  post :contact_me, to: 'home#contact_me'
  
  root to: 'home#index'
end

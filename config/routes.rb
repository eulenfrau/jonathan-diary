Rails.application.routes.draw do
  resources :images
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'aktuell/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/aktuell/bilder/:id', to: 'aktuell#bilder'

  get '/articles/show/:id', to: 'articles#show'

  get '/articles/gallery/:id', to: 'articles#gallery'

  resources :articles, only: [:show, :index]

  root 'aktuell#index'
end

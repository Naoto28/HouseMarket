Rails.application.routes.draw do

  get 'messages/index'

  get 'messages/show'

  get 'messages/edit'

  get 'messages/new'

  get 'spaces/index'

  get 'spaces/show'

  get 'spaces/edit'

  get 'spaces/new'

devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}

  resources :users
  resources :cities
  resources :estates
  resources :favorites
  resources :messages

  root "roots#top"
  get "roots/about", as: 'about'




end

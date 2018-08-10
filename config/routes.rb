Rails.application.routes.draw do

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

  root "roots#top"
  root "roots#about"



end

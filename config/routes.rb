Rails.application.routes.draw do

  get 'messages/index'

  get 'messages/show'

  get 'messages/edit'

  get 'messages/new'

  get 'spaces/index'

  get 'spaces/show'

  get 'spaces/edit'

  get 'spaces/new'

  get "favorites/index", as: 'favorites'


  resources :estates, only: [:new, :create, :index, :show] do
        resource :favorites, only: [:create, :destroy]
  end

devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}

  resources :users
  resources :cities
  resources :estates
  resources :messages


  get "roots/about", as: 'about'
  get "roots/result", as: 'result'
  get "roots/city_result/:id" => 'roots#city_result', as: 'city_result'
  root "roots#top"



end

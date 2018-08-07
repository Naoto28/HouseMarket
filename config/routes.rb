Rails.application.routes.draw do

  devise_for :users
  resources :cities
  resources :estates
  resources :favorites

  root "roots#top"
  root "roots#about"
end

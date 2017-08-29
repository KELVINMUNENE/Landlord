Rails.application.routes.draw do
  resources :emergencies
  resources :notifications
  resources :maintanances
  resources :complaints
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :addresses
  resources :orders
  resources :customers
end

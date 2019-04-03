Rails.application.routes.draw do
  resources :customers do
    resources :addresses
    resources :orders
  end

end

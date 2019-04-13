Rails.application.routes.draw do

  root to: "welcome#index"

  get :search, controller: :welcome

  resources :orders
  
  resources :customers do
    resources :addresses
    resources :orders
    resources :phones
  end

end

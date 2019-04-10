Rails.application.routes.draw do

  resources :phones
  root to: "welcome#index"

  get :search, controller: :welcome

  resources :customers do
    resources :addresses
    resources :orders
  end

end

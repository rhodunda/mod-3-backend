Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :purchases
  resources :products
  resources :users
  post '/users/login' => 'users#login'
  # only[:index, :show, :create, :update]

end

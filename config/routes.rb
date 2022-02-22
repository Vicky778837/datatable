Rails.application.routes.draw do
  resources :ecom_orders
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"



  root 'ecom_orders#index'
end

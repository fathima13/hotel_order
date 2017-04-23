Rails.application.routes.draw do
   	root 'users#index'
   	resources :order_items
 	resources :users
 	resources :orders
 resources :hotels do
 	resources :dishes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

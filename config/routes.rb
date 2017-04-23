Rails.application.routes.draw do
   	root 'users#index' 	
   	resources :users
   	resources :orders do
      resources :order_items
    end
    resources :hotels do
     	resources :dishes
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

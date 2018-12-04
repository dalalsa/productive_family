Rails.application.routes.draw do
  post "/rate" => "rater#create", :as => "rate"
  get "carts/:id" => "carts#show", as: "cart"
  delete "carts/:id" => "carts#destroy"
  post "items/:id/add" => "items#add_quantity", as: "item_add"
  post "items/:id/reduce" => "items#reduce_quantity", as: "item_reduce"
  post "items" => "items#create"
    
  get "items/:id" => "items#show", as: "item"

  delete "items/:id" => "items#destroy"

  devise_for :sellers, path: "sellers",
                       controllers: {
                         sessions: "sellers/sessions",
                         registrations: "sellers/registrations",
                       }

  devise_for :users, path: "users",
                     controllers: {
                       sessions: "users/sessions",
                       registrations: "users/registrations",
                     }

  resources :sellers, only: [:index, :show]
  resources :users, only: [:index, :show]
  resources :products
  # resources :items
  # resources :carts

  put "/orders/:id/approve", to: "orders#approve"
  put "/orders/:id/reject", to: "orders#reject"
  post "/orders/:id", to: "orders#create"
  resources :orders

  get "pages/home"

  root "sellers#index"
end
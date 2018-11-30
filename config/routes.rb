Rails.application.routes.draw do
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
  resources :items
  resources :orders

  
  # in my opinion we need index and show users JUST for us as an admin / Nora
  root "sellers#index"
end

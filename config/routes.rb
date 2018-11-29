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

<<<<<<< HEAD
  
=======
  devise_for :users, path: "users",
                     controllers: {
                       sessions: "users/sessions",
                       registrations: "users/registrations",
                     }

>>>>>>> 04b0d82daabb1b2e15a5ac4484d7aa1e382f283d
  resources :sellers, only: [:index, :show]
  # index sellers will be in the home page
  # Show seller when a customer choose the seller (add to cart and products will be there) /Nora
  resources :users, only: [:index, :show]
  resources :products
  resources :items
  resources :orders

  
  # in my opinion we need index and show users JUST for us as an admin / Nora
  root "pages#home"
end
